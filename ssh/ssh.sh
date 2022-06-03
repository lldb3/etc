#!/bin/bash
set -o errexit

echo "This script will regenerate the ssh host keys and change sensible defaults"

if [[ $EUID -ne 0 ]]; then
    echo "Please run as root. Stopping"
    exit 1
fi

rm /etc/ssh/ssh_host_*
ssh-keygen -t rsa -b 4096 -f /etc/ssh/ssh_host_rsa_key -N ""
ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -N ""    
awk '$5 >= 3071' /etc/ssh/moduli > /etc/ssh/moduli.safe
mv /etc/ssh/moduli.safe /etc/ssh/moduli
cp /etc/ssh/sshd_config{,.bak}
cp sshd_config /etc/ssh/sshd_config
systemctl restart sshd