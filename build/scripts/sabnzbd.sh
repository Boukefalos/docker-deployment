## Environmen t
export_env SABNZBD_CONFIG /host/etc/sabnzbd/sabnzbd.ini
export_env SABNZBD_DATA /host/var/lib/sabnzbd

## SABnzbd
echo 'deb http://ppa.launchpad.net/jcfp/ppa/ubuntu precise main' >> /etc/apt/sources.list.d/sabnzbdplus.list
echo 'deb http://ppa.launchpad.net/jcfp/nobetas/ubuntu precise main' >> /etc/apt/sources.list.d/sabnzbdplus.list
apt install -f
apt_install_permanent sabnzbdplus

## Utilities
apt_install_permanent unzip par2 python-openssl python-yenc

## 7zip
apt_install_permanent p7zip-full
