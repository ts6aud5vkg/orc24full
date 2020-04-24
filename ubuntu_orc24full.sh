#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   sudo su   
else
	echo "Root user"
fi
sudo -i
apt-get update
apt-get install -y git wget
rm -rf orc24full.sh
wget https://raw.githubusercontent.com/ts6aud5vkg/orc24full/master/orc24full.sh
chmod 777 orc24full.sh
./orc24full.sh
