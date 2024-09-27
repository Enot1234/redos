#!/bin/bash

sed -i 's/#Port 22/Port 2222/g' /etc/ssh/sshd_config

semanage port -a -t ssh_port_t -p tcp 2222

systemctl enable --now sshd