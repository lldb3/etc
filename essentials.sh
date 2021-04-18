#!/bin/bash

PYTHON="git gcc clang python3 python3-pip python3-setuptools python3-wheel virtualenvwrapper"
SYSTOOLS="ufw ncdu rkhunter net-tools dnsutils dnsenum traceroute hping3"
XTOPS="iftop htop virt-top"

apt update 
apt install -y $PYTHON $SYSTOOLS $XTOPS 

