#!/bin/bash

remote=*.*.*.*
local=*.*.*.*
addr_gre=*.*.*.*

ip tunnel add gre1 mode gre remote $remote local $local ttl 64
ip link set gre1 up
ip addr add $addr_gre/30 dev gre1