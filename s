#####Cara install SHC di Debian######
apt-get update
apt-get -y install build-essential
apt-get -y install unzip
wget https://github.com/neurobin/shc/archive/release.zip
unzip release.zip
cd shc-release
./configure
make
make install
#####Cara encrypt bash script menggunakan SHC######
1. Tempatkan file bash script di /root
2. Ubah jadi binary dg perintah berikut :
shc -r -f /root/scriptori.sh -o /root/scriptbinary.sh
File script binary hasil encrypt bisa Anda temukan di /root
#####Catatan#####
Script binary yang diencrypt di Debian 8 32 bit hanya bisa dieksekusi di Debian 8 32 bit
Script binary yang diencrypt di Debian 8 64 bit hanya bisa dieksekusi di Debian 8 64 bit
Jadi script binary hasil encrypt SHC itu spesifik versi Debian dan versi bit
