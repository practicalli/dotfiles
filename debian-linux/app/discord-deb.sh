#!/usr/bin/env bash

# INFO: Discord Desktop app for community discussions
# https://support.1password.com/install-linux/

echo
echo "# ---------------------------------------"
echo "Install Discord via Debian Linux package system"
echo

echo "Download official Discord Debian Package"
curl --location "https://discordapp.com/api/download?platform=linux&format=deb" --output /tmp/discord-latest.deb
echo

echo "Install Discord package"
sudo apt-get install /tmp/discord-latest.deb
echo

echo "Discord App now available via desktop launcher and command line:"
echo "Discord location: $(which discord)"
echo "Discord version: $(discord --version)"
echo "# ---------------------------------------"
echo
