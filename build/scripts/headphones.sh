#!/bin/bash
set -e
source /build/config
set -x

## Environment
export_env HEADPHONES_CONFIG /host/etc/headphones/config.ini
export_env HEADPHONES_CONFIG_DEFAULT /opt/headphones/config.ini
export_env HEADPHONES_DATA /host/var/lib/headphones

## Headphones
cd /opt
git clone https://github.com/rembo10/headphones.git
 
## Encoders
echo "deb http://ppa.launchpad.net/jon-severinsson/ffmpeg/ubuntu $(lsb_release -c -s) main" | sudo tee -a /etc/apt/sources.list
apt-get update
apt_get_install_permanent --force-yes ffmpeg libmp3lame0 ffmpeg libavcodec-extra-54