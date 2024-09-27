#!/bin/bash

# firewall
chmod +x config/firewall.sh
./config/firewall.sh

# dhcp
chmod +x config/dhcp.sh
./config/dhcp.sh

# ssh
chmod +x config/ssh.sh
./config/ssh.sh

# gre
cp -ar config/gre.sh /opt/gre.sh
chmod +x /opt/gre.sh
cp -ar config/crontab /etc/crontab

# ospf
chmod +x config/ospf.sh
./config/ospf.sh

# backup
mkdir /var/backup
mkdir /var/backup-scripts

cp -ar config/backup.sh /var/backup-scripts/backup.sh

chmod +x /var/backup-scripts/backup.sh

/var/backup-script/backup.sh