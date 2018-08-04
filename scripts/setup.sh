#!/bin/bash -eux

# Add packer user to sudoers.
echo "packer        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
