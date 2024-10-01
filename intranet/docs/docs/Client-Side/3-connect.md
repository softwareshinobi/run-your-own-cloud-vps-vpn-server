# 3 - Connecting To VPN Using Terminal

## See Your Current IP Address (before)

```
dig +short myip.opendns.com @resolver1.opendns.com
```

the response is the public IP for your internet traffic. This IP was given to you by your ISP. This is my IP at home, your value will be differerent.

```
186.1.185.1
```

Ok, that's your normal IP. after we connect the VPN that should change.

## Connect To The VPN Over The Terminal

now let's connect to the VPN using the openvpn application we just installed and the ovpn config file we just downloaded.

```
sudo bash start-vpn-client.bash
```

You'll see output like the following.

```
2024-07-29 10:23:59 --cipher is not set. Previous OpenVPN version defaulted to BF-CBC as fallback when cipher negotiation failed in this case. If you need this fallback please add '--data-ciphers-fallback BF-CBC' to your configuration and/or add BF-CBC to --data-ciphers.
2024-07-29 10:23:59 OpenVPN 2.5.9 x86_64-pc-linux-gnu [SSL (OpenSSL)] [LZO] [LZ4] [EPOLL] [PKCS11] [MH/PKTINFO] [AEAD] built on Jun 27 2024
2024-07-29 10:23:59 library versions: OpenSSL 3.0.2 15 Mar 2022, LZO 2.10
2024-07-29 10:23:59 TCP/UDP: Preserving recently used remote address: [AF_INET]207.154.248.72:1194
2024-07-29 10:23:59 UDP link local: (not bound)
2024-07-29 10:23:59 UDP link remote: [AF_INET]207.154.248.72:1194
2024-07-29 10:24:00 WARNING: 'link-mtu' is used inconsistently, local='link-mtu 1541', remote='link-mtu 1542'
2024-07-29 10:24:00 WARNING: 'comp-lzo' is present in remote config but missing in local config, remote='comp-lzo'
2024-07-29 10:24:00 [207.154.248.72] Peer Connection Initiated with [AF_INET]207.154.248.72:1194
2024-07-29 10:24:01 Options error: Unrecognized option or missing or extra parameter(s) in [PUSH-OPTIONS]:1: block-outside-dns (2.5.9)
2024-07-29 10:24:01 TUN/TAP device tun0 opened
2024-07-29 10:24:01 net_iface_mtu_set: mtu 1500 for tun0
2024-07-29 10:24:01 net_iface_up: set tun0 up
2024-07-29 10:24:01 net_addr_ptp_v4_add: 192.168.255.6 peer 192.168.255.5 dev tun0
2024-07-29 10:24:01 Initialization Sequence Completed
```

Cool. Check that last line. We need it to say completed.

## Verifying in logs you are connected

look for the last line. does it look like this?

```
2024-07-29 10:24:01 Initialization Sequence Completed
```
Got that? You are likely on the VPN now. Let's verify for real.

## See Your Current IP Address (after)

So we think we are on the VPN. Let's verify over the terminal.

Now we run the same IP checking command as earlier. The numbers should change now.

```
dig +short myip.opendns.com @resolver1.opendns.com
```

the response is the public IP for your internet traffic.

This value should be equal to the public IP of your VPS server.

```
38.110.1.181
```

Is it different than the IP you got before connecting to the VPN a few minutes ago? Good.

## Launch Web Browser Showing Details About Your IP

This will open up firefox and show you detail about your Internet Connection details.

The location displayed will be where the VPS server is located.

```
firefox https://whatismyipaddress.com/
```

## You are done.

you are now connected using the terminal to your very own VPN server.

so now let's keep the VPN client terminal window up.

Let's go play with some of the intranet stuff now.

