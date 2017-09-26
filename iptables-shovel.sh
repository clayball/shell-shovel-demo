#!/bin/bash

# IPtables rules for Shell shoveling demo. 
#
# $ chmod u+x iptables-shovel.sh
#
# Usage: sudo ./iptables-shovel.sh [add|drop] [port]


# Set PORT and PORT2
if [ $2 ]; then
    PORT=$2
    let "PORT2 = $PORT+1"
else
    PORT=41337   # default ports
    PORT2=41338
fi

if [ "$1" == "add" ]; then
    echo "[*] adding rules for ports ${PORT}, ${PORT2}"
    iptables -A INPUT -p tcp -m tcp --dport $PORT -j ACCEPT
    iptables -A INPUT -p tcp -m tcp --dport $PORT2 -j ACCEPT
fi
if [ "$1" == "drop" ]; then
    echo "[*] dropping rules for ports ${PORT}, ${PORT2}"
    iptables -D INPUT -p tcp -m tcp --dport $PORT -j ACCEPT
    iptables -D INPUT -p tcp -m tcp --dport $PORT2 -j ACCEPT
fi

echo "[*] INPUT chain after performing ${1}"
echo "========================================"
iptables -S INPUT
echo "========================================"
echo " "
