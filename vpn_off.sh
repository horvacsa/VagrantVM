#!/bin/bash

sudo route del default gw 10.0.2.2
sudo route add default gw 192.168.1.1
sudo sed -i '/nameserver 10.186.16.35/d' /etc/resolv.conf
sudo sed -i '16i nameserver 192.168.1.1' /etc/resolv.conf
unset http_proxy
unset https_proxy