#!/bin/bash

dnf install -y frr

sed -i 's/ospfd=no/ospfd=yes/g' /etc/frr/daemons

cp -ar frr.conf /etc/frr/frr.conf

systemctl enable --now frr