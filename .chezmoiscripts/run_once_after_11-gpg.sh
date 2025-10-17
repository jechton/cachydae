#!/usr/bin/env bash

sudo mkdir -p /etc/gnupg
echo "keyserver hkps://keyserver.ubuntu.com
keyserver hkps://pgp.surfnet.nl
keyserver hkps://keys.mailvelope.com
keyserver hkps://keyring.debian.org
keyserver hkps://pgp.mit.edu
connect-quick-timeout 4" | sudo tee /etc/gnupg/dirmngr.conf
sudo chmod 644 /etc/gnupg/dirmngr.conf
sudo gpgconf --kill dirmngr || true
sudo gpgconf --launch dirmngr || true
