#!/usr/bin/env bash

echo ""

echo "# ---------------------------------------"
echo "Whalebird Mastodon Desktop UI"

# install the nvim.appimage (automatic only installs nvim and not runtime)
# dra download --automatic --install --output ~/.local/bin h3poteto/whalebird-desktop
sudo dra download --select "*.deb" --install --output ~/.local/bin h3poteto/whalebird-desktop

echo "# ---------------------------------------"

echo ""
