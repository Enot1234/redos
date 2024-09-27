#!/bin/bash

dnf install -y dhcp-server

cp -ar dhcpd.conf /etc/dhcp/dhcpd.conf

systemctl enable --now dhcpd