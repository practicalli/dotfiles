#!/usr/bin/env bash

# 1Password Desktop app for password management
# https://support.1password.com/install-linux/

echo
echo "# ---------------------------------------"
echo "Install Discord via Debian Linux package system"
echo

echo
echo "Download official Discord Debian Package"
curl --location "https://discordapp.com/api/download?platform=linux&format=deb" --output /tmp/discord-latest.deb
echo

echo
echo "Install Discord package"
sudo apt-get install /tmp/discord-latest.deb
echo

echo
echo "Discord App now available via desktop launcher and command line:"
which discord
echo "# ---------------------------------------"
echo
