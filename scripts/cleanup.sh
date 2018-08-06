#!/bin/bash -eux

# Remove passwordless sudo from packer user.
sed -i '/^packer\s+ALL=\(ALL\)\s+NOPASSWD: ALL$/d' /etc/sudoers
