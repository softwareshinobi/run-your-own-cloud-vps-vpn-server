
set -e

set -x

sudo bash 1-apt-software-installation.bash

sudo bash 2-reconfigure-docker0-ip.bash

sudo bash 3-install-configure-openvpn.bash
