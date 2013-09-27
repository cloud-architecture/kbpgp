
C = require('../const').openpgp
K = require('../const').kb
triplesec = require 'triplesec'
{SHA1,SHA256} = triplesec.hash
{AES} = triplesec.ciphers
{native_rng} = triplesec.prng
{calc_checksum} = require '../util'
{encrypt} = require '../cfb'
{Packet} = require './base'

#=================================================================================

class KeyMaterial extends Packet

  constructor : (@key) ->
    super()

  #--------------------------

  _write_private_enc : (bufs, priv, password) ->
    bufs.push new Buffer [ 
      254,                                  # Indicates s2k with SHA1 checksum
      C.symmetric_key_algorithms.AES256,    # Sym algo used to encrypt
      C.s2k.salt_iter,                      # s2k salt+iterative
      C.hash_algorithms.SHA256              # s2k hash algo
    ]
    sha1hash = (new SHA1).bufhash priv      # checksum of the cleartext MPIs
    salt = native_rng 8                     # 8 bytes of salt
    bufs.push salt 
    c = 96
    bufs.push new Buffer [ c ]              # ??? translates to a count of 65336 ???
    k = (new S2K).write password, salt, c   # expanded encryption key (via s2k)
    ivlen = AES.blockSize                   # ivsize = msgsize
    iv = native_rng ivlen                   # Consider a truly random number in the future
    bufs.push iv                            # push the IV on before the ciphertext

    # horrible --- 'MAC' then encrypt :(
    plaintext = Buffer.concat [ priv, sha1hash ]   

    # Encrypt with CFB/mode + AES.  Use the expanded key from s2k
    ct = encrypt { block_cipher_class : AES, key : k, plaintext, iv } 
    bufs.push ct

  #--------------------------

  _write_private_clear : (bufs, priv) ->
    bufs.push [ 
      new Buffer([0]),
      priv,
      uint_to_buffer(calc_checksum(priv), 16)
    ]

  #--------------------------

  _write_public : (timestamp) ->
    pub = @key.pub.serialize()
    return { type : @key.type, pub, timestamp }

  #--------------------------

  _write_private : ({password,timestamp,progress_hook}, cb) ->
    ret = @_write_public timestamp
    priv = @key.priv.serialize()
    await triplesec.encrypt { key : password, data : priv, progress_hook }, defer err, epriv
    if err? then ret = null
    else         
      ret.priv = 
        data : epriv
        encryption : K.key_encryption.triplesec_v1
    cb err, ret

  #--------------------------
  
  write_private : ({password, timepacket}) ->
    bufs = []
    @_write_public bufs, timepacket

    priv = @key.priv.serialize()

    if password? then @_write_private_enc   bufs, priv, password
    else              @_write_private_clear bufs, priv

    body = Buffer.concat bufs
    @frame_packet C.packet_tags.secret_key, body

  #--------------------------

  write_public : ({timepacket}) ->
    bufs = []
    @_write_public bufs, timepacket
    body = Buffer.concat bufs
    @frame_packet C.packet_tags.public_key, body

  #--------------------------
  
#=================================================================================

