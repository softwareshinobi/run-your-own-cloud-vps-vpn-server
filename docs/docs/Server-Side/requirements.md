## What You Need

1. Local debian/ubuntu linux box (referred to as `GALLARDO` in this documentation) with sudo/root access.

1. Cloud VPS server (referred to as `COUNTACH` in this documentation) with `UDP / port 1194` open to `the world (0.0.0.0/0)` with sudo/root access.

## Don't Have A Cloud Linux VPS Server?

Umm... just get one? Use whatever platform you want...

* AWS
* Azure
* GCP
* Digital Ocean
* Linode
* Vultr
* GT Host (what I use today)

Lots of options, just get the latest Ubuntu version they have (20+ something). You don't need more than 2GB of ram.

## Nice To Have

* domain/sub domain name to point to `COUNTACH`

    ex: `COUNTACH`.softwareshinobi.digital (A record / `38.110.1.181`)

    Note: the IP you use here would be specific to you and correspond to the IP the VPN script tells you.

* sub domain name to point to private docker IP on `COUNTACH`

    ex: intranet.softwareshinobi.digital (A record / `10.28.1.1`)

## Steps Required To Pull This Off

1. Configure the cloud VPS server

1. Configure the local workstation

1. Connect to the cloud VPN server

1. Connected to secured resources
