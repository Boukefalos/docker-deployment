## Enable multimedia sources in APT
echo "deb http://www.deb-multimedia.org $DEBIAN main non-free" >> /etc/apt/sources.list
echo "deb-src http://www.deb-multimedia.org $DEBIAN main non-free" >> /etc/apt/sources.list
apt_install_permanent deb-multimedia-keyring
