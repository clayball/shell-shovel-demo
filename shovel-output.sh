#!/bin/bash

# Usage: ./shovel-output.sh [port2]
if [ $1 ]; then
    PORT2=$1
    nc -l -k -vn -p $PORT2
else
    echo "[-] ERROR: must supply port"
fi

