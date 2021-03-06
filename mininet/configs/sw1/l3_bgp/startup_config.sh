#!/bin/bash

stty -echo; set +m

ip link set dev swp1 address 00:01:00:00:00:01
ip link set dev swp2 address 00:01:00:00:00:02
ip address add 172.16.101.1/24 broadcast + dev swp1
ip address add 172.16.10.1/24 broadcast + dev swp2

cp /configs/quagga/* /etc/quagga/
chown quagga.quagga /etc/quagga/*
