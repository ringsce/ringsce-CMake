include(common.cmake)

# Actually download the file and verify its hash.
file_download(EXPECTED_MD5 dbd330d52f4dbd60115d4191904ded92)

# Verify that the local file already exists with expected hash.
file_download(EXPECTED_MD5 dbd330d52f4dbd60115d4191904ded92)
file_download(EXPECTED_HASH MD5=dbd330d52f4dbd60115d4191904ded92)
file_download(EXPECTED_HASH SHA1=67eee17f79d9ac557284fc0b8ad19f25723fb578)
file_download(EXPECTED_HASH SHA224=ba283726bbb602776818b463943189afd91836cb7ee5dd6e2c7b5ae4)
file_download(EXPECTED_HASH SHA256=cf3334b1275071e1da6e8c396ccb72cf1b2388d8c937526f3af26230affb9423)
file_download(EXPECTED_HASH SHA384=43a5d13978d97c660db44481aee0604cb4ff6ca0775cd5c2cd68cd8000e107e507c4caf6c228941231041e282ffb8950)
file_download(EXPECTED_HASH SHA512=6984e0909a1018030ccaa418e3be1654223cdccff0fe6adc745f9aea7e377f178be53b9fc7d54a6f81c2b62ef9ddcd38ba1978fedf4c5e7139baaf355eefad5b)