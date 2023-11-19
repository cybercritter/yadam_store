#!/bin/bash -l

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev liblzma-dev tk-dev

cd /tmp/
wget https://www.python.org/ftp/python/3.12.0/Python-3.12.0.tgz
tar xzf Python-3.12.0.tgz
cd Python-3.12.0

sudo ./configure --prefix=/opt/python/3.12.0/ --enable-optimizations --with-lto --with-computed-gotos --with-system-ffi
sudo make -j "$(nproc)"
sudo ./python3.12 -m test -j "$(nproc)"
sudo make altinstall
sudo rm /tmp/Python-3.12.0.tgz

sudo /opt/python/3.12.0/bin/python3.12 -m pip install --upgrade pip setuptools wheel

sudo ln -s /opt/python/3.12.0/bin/python3.12        /opt/python/3.12.0/bin/python3
sudo ln -s /opt/python/3.12.0/bin/python3.12        /opt/python/3.12.0/bin/python
sudo ln -s /opt/python/3.12.0/bin/pip3.12           /opt/python/3.12.0/bin/pip3
sudo ln -s /opt/python/3.12.0/bin/pip3.12           /opt/python/3.12.0/bin/pip
sudo ln -s /opt/python/3.12.0/bin/pydoc3.12         /opt/python/3.12.0/bin/pydoc
sudo ln -s /opt/python/3.12.0/bin/idle3.12          /opt/python/3.12.0/bin/idle
sudo ln -s /opt/python/3.12.0/bin/python3.12-config      /opt/python/3.12.0/bin/python-config
