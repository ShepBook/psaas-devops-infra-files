#!/bin/bash -eux

# Add packer user to sudoers.
echo "packer        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Create directory for nginx config.
mkdir -p /etc/nginx/config
chmod -R 0755 /etc/nginx/config
