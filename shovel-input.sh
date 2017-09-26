#!/bin/bash

# This is the shoveling shell, like a proxy
#
# Usage: ./shovel-input [port]
#
# Set PORT and PORT2
if [ $2 ]; then
    PORT=$2
    let "PORT2 = $PORT+1"
else
    PORT=41337   # default ports
    PORT2=41338
fi

echo "[*] In a different terminal run.."
echo "    $ ./shovel-display.sh ${PORT2}"

nc -l -vn -k -p $PORT
