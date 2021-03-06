
{KeyRing,box,unbox,KeyManager} = require '../..'

problems = [
  {
    name : "dens",
    key : """-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v2

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
=kFf6
-----END PGP PUBLIC KEY BLOCK-----
""",
    sig : """-----BEGIN PGP MESSAGE-----
Comment: https://keybase.io/download
Version: Keybase Go 1.0.17 (windows)

xA0DAAoBjHcAIMAPX0MBy+F0AOIAAAAA6XsiYm9keSI6eyJrZXkiOnsiZWxkZXN0
X2tpZCI6IjAxMjAyNWYzNDc2NGQ0ZWM1NDdjODM4OTY1YTFhNTg0N2IzM2IxN2U3
NTE2ZTYxNjIyZTkyZDRjMjRlNTM1MGY4YTI1MGEiLCJob3N0Ijoia2V5YmFzZS5p
byIsImtpZCI6IjAxMjAyNWYzNDc2NGQ0ZWM1NDdjODM4OTY1YTFhNTg0N2IzM2Ix
N2U3NTE2ZTYxNjIyZTkyZDRjMjRlNTM1MGY4YTI1MGEiLCJ1aWQiOiJjYTllOTQ4
ZjZmN2E0YTE5ZTAyMDU4YWQ2MjZmNmMxOSIsInVzZXJuYW1lIjoiZGVucyJ9LCJz
aWJrZXkiOnsiZmluZ2VycHJpbnQiOiI0NmI5MDg3NzQ3MzNkNzY4YjhhMmZmYTQ4
Yzc3MDAyMGMwMGY1ZjQzIiwiZnVsbF9oYXNoIjoiZGIwMmI4MGYzNGM1NDU3NDI4
YjgyYmZjMjU4OWM0NjZlOTE2Y2E5ODllZTA0NDllN2VmMGU1ODY0Y2MzZmFhMSIs
ImtleV9pZCI6IjhDNzcwMDIwQzAwRjVGNDMiLCJraWQiOiIwMTAxZGExMGM0NjNi
NDY0OTE0ZjQ5NGJkYzZjOGEyM2E1Mzc4MGFkYWIyODJmNWZiMjg5NzAxZDA0MDY5
ZDgwMWUzMTBh6CIsInJldmVyc2Vfc2lnIjpudWxsfSwidHlwZSI6InNpYmtleSIs
InZlcnNpb24iOjF9LCJjbGllbnQiOnsibmFtZSI6ImtleWJhc2UuaW8gZ28gY2xp
ZW50IiwidmVyc2lvbiI6IjEuMC4xNyJ9LCJjdGltZSI6MTQ3NzY5ODQ4NSwiZXhw
aXJlX2luIjo1MDQ1NzYwMDAsIm1lcmtsZV9yb290Ijp7ImN0aW1lIjoxNDc3Njk4
NDcwLCJoYXNoIjoiYWFhN2MzMTgwMjQ3MGEwMGQxOTQ5ZWM3ZGFjMWU0ZjQ5ZmJj
ZDBmNDI1MzBmMjZlYzUxZTE1ZThjYTFlZmPnYzhlNjBjNTFiMzE5M2E1YWIyMzRi
OTlmZDM1NGQ5YTM2NmY1ZDc0NWUyODJlNDI3MDc4NTQ5MjBmMTg1ZWEzYTc1Iiwi
c2Vxbm8iOjY5MjQ0NH0sInByZXYiOiI1ZjM1NDA5MWMwZTlhYzI1NTUxOGE0M2Nk
NWYyZDBmMTYwYjLlNWI0MTk1NDRjZDJhMWZiMTViMjRiNzI3N2E4NiIsInPkZXFu
byI6OCwidGFnIjoic+NpZ25hdHVyZeEifQDCwVwEAAEKABAFAlgT47UJEIx3ACDA
D19DAAA5wBAAU8RaFlBE+ka37+kG8LUKzf9GB6aI/WGDiyu9SKmPA2wXUwrJXUII
wSn+s5xwGUbN2DvY9inwKjtOFsERYb7EBLPWJU2ru5/N8GoprVqI19/aVMt22aCZ
mudxmt5onNAoQPkSvFoL2rlXueuY7nAFI8Se5+YcI5GuBcGb16kH0h4fUumh79lP
QSX1BBiOEOqbUlntX3JxbqPGpwAud6ORNmoQ2hBZ8weJUpI8UTeT1rrvv0htb1/m
pokS9if3QzmL0e2m554FQzxnvjSdd06on4kbbqlKAXGnbYT+7wBpx56rLENl9qND
u8uv4sxw3i72ogMTJAI2Po370R8ov3QBL99MeCd2a2pYJ6uq7vBFm7YGuckUYHv1
nTB2a8O2/CLG8ncFPecPpTh3Wh+5X+hFO5RQYYjhSde47kSiVPEZw2lmwP2mNhIx
9gJzSs1gJ4IXD+elKXKMtqYmN3Mu+xEPADKl2QT99QUiQ9GmO71tKMmXF/TTrXzw
9hLF3XZk7gcVt0+KxcbIhyyjKiwaKWczoGfJaIF67NgdoLOZkc7RNyuk0Ou9tY25
I6t6l754AwdQ+yYxWAii/07QZJ2vhwszoCwqfyEyQeKYW13PxfRzzCVawKaa6Gl9
agNycF86aeOOiCELLbgHKPCbqluzpyk3AVB6WPQXZRerQJ7S5pZR+Zg=
=5puV
-----END PGP MESSAGE-----
""",
    opts : unbox_fail : true
  }
]

test_unbox = ({km, sig, opts}, cb) ->
  await unbox { keyfetch : km, armored : sig }, defer err, literals
  if not err? and opts?.unbox_fail
    err = new Error "expected unbox to fail!"
  else if opts?.unbox_fail and err?
    err = null
  cb err

test = ({T,sig,key,opts},cb) ->
  import_opts = now : Math.floor(new Date(2016, 12, 11)/1000)
  await KeyManager.import_from_armored_pgp { armored : key, opts: import_opts }, T.esc(defer(km, warnings), cb, "load key taco test")
  T.waypoint "loaded key"
  await test_unbox { km, sig, opts }, T.esc(defer(literals), cb, "verify")
  unless opts?.unbox_fail
    T.assert (literals[0].get_data_signer()?), "was signed!"
    fp1 = literals[0].get_data_signer()?.get_key_manager()?.get_pgp_fingerprint()?.toString("hex")
    fp2 = km.get_pgp_fingerprint().toString("hex")
    T.equal fp1, fp2, "Fingerprint was right"
  cb()

exports.test_problem_sigs = (T,cb) ->
  for {name,sig,key,opts} in problems
    T.waypoint name
    await test {T, sig, key, opts}, defer()
  cb()
