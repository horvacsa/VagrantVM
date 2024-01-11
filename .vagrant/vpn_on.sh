#!/bin/bash

sudo route add default gw 10.0.2.2
sudo route del default gw 192.168.1.1
sudo sed -i '/nameserver 192.168.1.1/d' /etc/resolv.conf
sudo sed -i '16i nameserver 10.186.16.35' /etc/resolv.conf