#!/bin/bash
set -e
source /build/config
set -x


echo $MODE
apt-get clean
# rm -rf /build
rm -rf /tmp/* /var/tmp/*
# rm -rf /var/lib/apt/lists/*
# rm -f /etc/dpkg/dpkg.cfg.d/02apt-speedup
