#!/bin/bash
set -o errexit

if [[ $EUID -ne 0 ]]; then
    echo "Please run as root. Stopping"
    exit 1
fi


MINIMUM="git curl ncdu tldr gcc clang python3 python3-pip python3-setuptools python3-wheel virtualenvwrapper"
SYSTOOLS="ufw ncdu rkhunter net-tools dnsutils traceroute hping3"
XTOPS="iftop htop virt-top nethogs iotop"
CONTAINER="docker docker-compose"

apt update 
apt install -y $MINIMUM $SYSTOOLS $XTOPS $CONTAINER

