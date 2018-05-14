#!/bin/bash
#Author:
#    1vec
#Program:
#    initialize VPS on Ubuntu 16.04 through bash operations.
apt update
apt upgrade -y
apt install gcc zsh gdb git -y
username=username
if [ -z "$username" ]; then
	exit 0
fi
useradd -m -s /bin/zsh ${username}
passwd ${username}
echo -e "${username}\tALL=(ALL:ALL)\tALL">>/etc/sudoers
echo -e "${username}\tALL=NOPASSWD:ALL">>/etc/sudoers
cp -r .ssh /home/${username}
chown -r ${username}:${username} /home/${username}/.ssh
#chown ${username}:${username} /home/${username}/.ssh/authorized_keys
