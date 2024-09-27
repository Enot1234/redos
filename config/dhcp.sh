#!/bin/bash

dnf install -y dhcp-server

cp -ar config/dhcpd.conf /etc/dhcp/dhcpd.conf

systemctl enable --now dhcpd