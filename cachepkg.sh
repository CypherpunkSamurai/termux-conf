PACKAGES=$@
apt-get download $(apt-cache depends --recurse  \
  --no-conflicts --no-breaks --no-replaces --no-enhances \
  --no-pre-depends ${PACKAGES} | grep "^\w")
