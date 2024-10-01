
## Configure the cloud VPS server (`COUNTACH`)

1. clone the project from the softwareshinobi github

```
git clone https://github.com/softwareshinobi/embaNET-private-intranet.git
```

2. look at files downloaded from GitHub

```
ls -l embaNET-private-intranet/
```

you should see something like this:

```
-rw-rw-r-- 1 softwareshinobi softwareshinobi  7162 Jul 29 19:07 compose.yaml
-rw-rw-r-- 1 softwareshinobi softwareshinobi  1073 Jul 29 19:07 license.md
drwxrwxr-x 4 softwareshinobi softwareshinobi  4096 Jul 29 19:07 provision
-rw-rw-r-- 1 softwareshinobi softwareshinobi 14481 Jul 29 19:07 readme.md
-rwxrwxr-x 1 softwareshinobi softwareshinobi    53 Jul 29 19:07 start-vpn-client.bash
-rwxrwxr-x 1 softwareshinobi softwareshinobi   136 Jul 29 19:07 start-vpn-server.bash
```

3. run the install and server setup script

navigate into the github repo directory and run the server config script.

this script will install docker, net-tools, and an upgraded VI editor.

```
cd embaNET-private-intranet/

sudo bash provision/cloudvps/provision.bash
```

**important note:** put your user password when the start scripts. 

**important note:** if you don't run with `sudo` you'll get permission errors.


5. start the vpn server and intranet services

now we'll run the docker compose container orchestration situation.

this will start the vpn and all the databases, apps, etc.

```
bash start-vpn-server.bash
```

This will download and run DockerHub Docker images to start the intranet services.

You are done when you see the following in the terminal:

```
+ docker-compose up -d
Creating network "embaNET-private-intranet_default" with the default driver
Creating embaNET-intranet-openvpn   ... done
Creating embaNET-intranet-openvpn-iam ... done
Creating embaNET-intranet-workspace ... done
Creating embaNET-intranet-gitea     ... done
Creating embaNET-intranet-apis-docs ... done
Creating embaNET-intranet-calendar  ... done
Creating embaNET-intranet-urus      ... done
Creating embaNET-intranet-nfs       ... done
Creating embaNET-intranet-welcome   ... done
Creating embaNET-intranet-sian      ... done
Creating embaNET-intranet-database  ... done
Creating embaNET-intranet-emby      ... done
Creating embaNET-intranet-apis       ... done
Creating embaNET-intranet-wordpress  ... done
Creating embaNET-intranet-phpmyadmin ... done
Creating embaNET-intranet-todo       ... done
```

6. verify the VPN server is up and running

so everything is done. now let's make sure the server is up before we configure the client.

run this to poll all running images and look for somebody mentioning VPN

```
sudo docker ps  | grep vpn
```

you should see something like this:

```
7e52e7acc02f   kylemanna/openvpn                                           "ovpn_run"               About a minute ago   Up 59 seconds                      0.0.0.0:1194->1194/udp, :::1194->1194/udp                embaNET-intranet-openvpn
a442a4b331b1   nginx                                                       "/docker-entrypoint.…"   About a minute ago   Up 59 seconds                      127.0.0.1:1180->80/tcp
```

alright. you should be good. now let's configure the local linux client, `GALLARDO`.

