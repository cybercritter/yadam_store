#!/bin/bash -l

echo "This only bootstraps for ubuntu and PopOS! operating systems"

echo "updating the aptitude packages"

# update the aptitude mirrors
sudo apt update

# update verify aptitude is at the latest versions
sudo apt upgrade -y

# remove any unneeded packages
sudo apt autoremove --purge -y


# install required application/packages

sudo apt install -y \
	terminator \
	build-essential \
	g++ \
	openjdk-19-jdk \
	git \
	yadm \
	llvm \
	libncurses-dev \
	libgdbm-dev \
	libreadline-dev \
	liblzma-dev \
  	libffi-dev \
	libssl-dev \
	gdb \
	lcov \
	pkg-config \
      	libbz2-dev \
	libffi-dev \
	libgdbm-dev \
	libgdbm-compat-dev \
	liblzma-dev \
      	libncurses5-dev \
	libreadline6-dev \
	libsqlite3-dev \
	libssl-dev \
      	lzma \
	lzma-dev \
	tk-dev \
	uuid-dev \
	zlib1g-dev \
	zsh \
	pkg-config \
	openssh-server \
	vim-gtk3

sudo ufw allow ssh

# get zsh and dotfiles
git clone --recurse git@github.com:cybercritter/yadam_store.git

# change to the temp directory for easy clean up later
#cd /tmp/

# Python Latest
#echo "Build python 3.12.0"
#wget -c https://www.python.org/ftp/python/3.12.0/Python-3.12.0.tar.xz
#tar xf Python-3.12.0.tar.xz
#cd Python-3.12.0

#./configure --enable-prefix="/opt" --without-doc-strings --enable-optimizations --with-lto 
#make -j12 && make test && sudo make install > /dev/null

# install cmake
#wget -c https://github.com/Kitware/CMake/releases/download/v3.27.7/cmake-3.27.7-linux-x86_64.tar.gz
#sudo tar zxf cmake-3.27.7-linux-x86_64.tar.gz -C /opt/ && sudo mv /opt/cmake-3.27.7-linux-x86_64/ /opt/cmake/ 

#node
#curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
#sudo apt install -y nodejs

# install yarn
#sudo npm install --global yarn 

# Visual Studio Code
#wget -c https://github.com/microsoft/vscode/archive/refs/tags/1.83.1.tar.gz
#cd 1.83.1
#sudo yarn

