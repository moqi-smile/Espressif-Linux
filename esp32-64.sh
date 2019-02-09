#!/bin/bash

sudo apt-get install gcc git wget make libncurses-dev flex bison gperf python python-serial python-pip

cd ~

mkdir -p ~/work/tool
mkdir -p ~/work/sources
mkdir -p ~/work/project

cd ~/work/tool/
wget https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz
sudo tar xvf xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz -C /opt/
echo export PATH="$PATH:/opt/xtensa-esp32-elf/bin" >> ~/.bashrc

cd ~/work/sources/
#git clone --recursive https://github.com/espressif/esp-idf.git
echo export IDF_PATH="$IDF_PATH:~/work/sources/esp-idf" >> ~/.bashrc

source ~/.bashrc

pip install --user -r /home/moqi/work/sources/esp-idf/requirements.txt
sudo usermod -a -G dialout $USER
reboot

