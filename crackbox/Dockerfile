FROM ubuntu

MAINTAINER omerxx@gmail.com

# https://github.com/magnumripper/JohnTheRipper/blob/bleeding-jumbo/doc/INSTALL-UBUNTU
# omerxx/crackbox

# Essentials
mkdir -p ~/src
apt-get install build-essential libssl-dev git yasm libgmp-dev libpcap-dev pkg-config libbz2-dev -y

# Clone
cd ~/src && git clone git://github.com/magnumripper/JohnTheRipper -b bleeding-jumbo john

# Build
cd ~/src/john/src && ./configure && make -s clean && make -sj4

# Symlink john
ln -s ~/src/john/run/john /usr/local/bin/john
