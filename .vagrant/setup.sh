#!/bin/bash

sudo ip route delete default
sudo ip route add default via 192.168.1.1
sudo sed -i '/nameserver 127.0.0.53/d' /etc/resolv.conf
sudo sed -i '16i nameserver 192.168.1.1' /etc/resolv.conf
sudo apt update
sudo apt install nodejs npm git build-essential software-properties-common curl zip oathtool expect net-tools -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf awscliv2.zip
sudo npm install -g aws-cdk
sudo apt install git-crypt git-lfs -y

# sudo python -m pip install aws-cdk-lib
# import aws_cdk as cdk

unzip lz_cli_unix_2.0.2.zip
rm -rf lz_cli_unix_2.0.2.zip
chmod +x *.sh