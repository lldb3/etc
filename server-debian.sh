#!/bin/bash
set -o errexit

echo "This script will setup basic server defaults: ------ TODO TODO TODO -------"
echo " - SSH"
echo " - Unattended Updates"
echo " - Basic packages"

if [[ $EUID -ne 0 ]]; then
    echo "Please run as root. Stopping"
    exit 1
fi

apt update 
apt install -y unattended-upgrades

cp -rv {,/}etc/apt/apt.conf.d/