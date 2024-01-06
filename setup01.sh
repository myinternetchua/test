sudo apt -y update
sudo apt -y upgrade

sudo apt install -y net-tools
sudo apt install -y build-essential m4 make
sudo apt install -y p7zip-full plocate dos2unix
sudo apt install -y libncurses5-dev

#For gmp and other sample utar
export MYFILE=gmp-6.3.0.tar.xz
export FURL=https://gmplib.org/download/gmp/$MYFILE

wget $FURL
tar -xf $MYFILE
xz -d -v $MYFILE
