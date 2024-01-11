#!/bin/bash

echo "Enable ssh password authentication"
sed -i 's/^PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config
echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
systemctl reload sshd

echo "Set root password"
echo -e "vagrant\nvagrant" | passwd root >/dev/null 2>&1