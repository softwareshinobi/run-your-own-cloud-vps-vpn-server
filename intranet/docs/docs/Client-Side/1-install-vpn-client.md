# Installing Key VPN Client Software

## Packages To Get

We need to install some networking related apps and also the openvpn terminal client.

* curl
* wget
* openvpn

## Run Install Script

```
cd embaNET-private-intranet/

sudo bash provision/localhost/1-install-openvpn-client.bash 
```

Now to verify the install... check the version of the vpn client.

## Verify Installation

did the install work? let's check.
```
openvpn --version
```

You should see something like this:

```
OpenVPN 2.5.9 x86_64-pc-linux-gnu [SSL (OpenSSL)] [LZO] [LZ4] [EPOLL] [PKCS11] [MH/PKTINFO] [AEAD] built on Jun 27 2024
library versions: OpenSSL 3.0.2 15 Mar 2022, LZO 2.10
Originally developed by James Yonan
Copyright (C) 2002-2022 OpenVPN Inc <sales@openvpn.net>
Compile time defines: enable_async_push=no enable_comp_stub=no enable_crypto_ofb_cfb=yes enable_debug=yes enable_def_auth=yes enable_dependency_tracking=no enable_dlopen=unknown enable_dlopen_self=unknown enable_dlopen_self_static=unknown enable_fast_install=needless enable_fragment=yes enable_iproute2=no enable_libtool_lock=yes enable_lz4=yes enable_lzo=yes enable_maintainer_mode=no enable_management=yes enable_multihome=yes enable_option_checking=no enable_pam_dlopen=no enable_pedantic=no enable_pf=yes enable_pkcs11=yes enable_plugin_auth_pam=yes enable_plugin_down_root=yes enable_plugins=yes enable_port_share=yes enable_selinux=no enable_shared=yes enable_shared_with_static_runtimes=no enable_silent_rules=no enable_small=no enable_static=yes enable_strict=no enable_strict_options=no enable_systemd=yes enable_werror=no enable_win32_dll=yes enable_x509_alt_username=yes with_aix_soname=aix with_crypto_library=openssl with_gnu_ld=yes with_mem_check=no with_openssl_engine=yes with_sysroot=no
```

You have that? good.



