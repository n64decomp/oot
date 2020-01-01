find src -type f -print0 | xargs -0 dos2unix
find include -type f -print0 | xargs -0 dos2unix
dos2unix checksum.md5
