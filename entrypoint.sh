#!/bin/bash

kcpserver -t 127.0.0.1:8989 -l :29900 -key 131415 -crypt aes-192 -mode fast2 -mtu 1400 -sndwnd 2048 -rcvwnd 1024 -nocomp true 2>&1 &

ss-server -s 0.0.0.0 -p 8989 -m aes-256-gcm -k 131415 
