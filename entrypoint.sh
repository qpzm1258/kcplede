#!/bin/bash

kcpserver -t 127.0.0.1:8989 -l :29900 -mode fast2 -mtu 1300 2>&1 &

ss-server -s 0.0.0.0 -p 8989 -m chacha20 -k 131415 --fast-open
