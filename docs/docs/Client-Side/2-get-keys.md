# Getting the VPN Client AutoConfig in a secure way

## Open A Secure SSH Tunnel To VPN Server

First we have to download The OpenVPN custom configuration file from the VPS server.

The file is accessible over SSH tunnel connecting to the VPN server.

**Remember**: The openvpn configuration file was created during the VPN server creation steps.

```
bash provision/localhost/2-start-ssh-tunnel.bash 
```

or you can execute this:

```
ssh -4 -L 1180:127.0.0.1:1180 softwareshinobi@huracan.embaNET.softwareshinobi.digital
```

put the password of the user on your VPS server.

after you are done, the following command should work:

## Verifying Tunnel Is Working

```
curl localhost:1180
```

the server response should look like this. it's coming over the SSH tunnel from a private tunnel on the VPS server.

```
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
```

If it looks like that... you are done setting up the tunnel.

## Open A New Terminal Window

**Important Note:**You will notice after you run this command that you are logged into the remote VPS server. That's correct. Now open a new terminal window on local host and continue. We need the following commands to come from `localhost`, not the remote server `COUNTACH`.

## Download The OpenVPN Configuration File

Now we are on the tunnel. Let's download the configuration file.

```
wget localhost:1180/huracanVPN.ovpn
```

you will get output like this:

```
Resolving localhost (localhost)... 127.0.0.1
Connecting to localhost (localhost)|127.0.0.1|:1180... connected.
HTTP request sent, awaiting response... 200 OK
Length: 4944 (4.8K) [application/octet-stream]
Saving to: ‘huracanVPN.ovpn’

huracanVPN.ovpn    100%[===================>]   4.83K  --.-KB/s    in 0s      

2024-07-29 20:05:21 (239 MB/s) - ‘huracanVPN.ovpn’ saved [4944/4944]
```

## Verifying Download of OpenVPN Configuration File

now when you `ls` the current directory you should see the following:

```
ls -l *vpn*
```

local server response:

```
-rw-rw-r-- 1 softwareshinobi softwareshinobi 4920 ago  6 20:50 huracanVPN.ovpn
-rwxrwxr-x 1 softwareshinobi softwareshinobi   53 ago  6 20:04 start-vpn-client.bash
```

Now you've downloaded the OpenVPN configuration file to your local server.

You can close the terminal window that started the tunnel, the one logged into `HURACAN`.

