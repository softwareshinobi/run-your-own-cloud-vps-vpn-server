4. change the default docker0 ip address

i dont have time to explain this part. but unless you have a good reason NOT to, then do this step.

By default the docker0 network interface listens on 172.17.0.1 or something like that.

The problem is the VPN server is listening here and so is the local server.

This creates collisions when on the VPN and trying to access ports bound on docker0.

The fix (read: hack) is to change the docker address on the server, so that clients don't need to do this.

so just run this script:

```
sudo bash provision/cloudvps/2-reconfigure-docker0-ip.bash
```

you looking for output at the end that says something like this (and mentions the inet ip 10.28.1.1):

```
+ systemctl restart docker
+ ifconfig docker0
docker0: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        inet 10.28.1.1  netmask 255.255.0.0  broadcast 10.28.255.255
        ether 02:42:ef:51:a3:b5  txqueuelen 0  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```

good. now your default docker0 IP has been explicitly set to not cause collisions with docker0 on your local computers also running docker.

5. create and configure the VPN server

Now we install the docker images and configuration for the VPN server itself.

Navigate into the github repo directory and run the server config script.

this script will download VPN related docker images, configure the VPN server, create VPN client configuration file.

```
sudo bash provision/cloudvps/3-install-configure-openvpn.bash
```

**Common Name (eg: your user, host, or server name) [Easy-RSA CA]:** put whatever you want. or just press enter to take the default. this value doesn't do much. we don't use it again.

**important note:** the script will keep asking you for a password. pick a single secure pass and use it ***every time*** for every time the script asks you. you'll never use this password again. only during setup. just make the password secure and use the exact one every time. then "throw" the password away.

