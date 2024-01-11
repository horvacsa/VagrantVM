#!/bin/bash
#retrieve proxy IP
curl http://pac.ba.sk.vw.vwg/pac/vwsk-zscaler-prod.pac | grep "PROXY" > proxy.txt
VW_PROXY=$(tail -1 proxy.txt | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}:[0-9]\{1,3\}')
rm proxy.txt

#set environment variables
export http_proxy=http://$VW_PROXY
export https_proxy=http://$VW_PROXY