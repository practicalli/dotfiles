#!/usr/bin/env bash

# TODO: may need to run via https://github.com/TheAssassin/AppImageLauncher/wiki

echo ""

echo "# ---------------------------------------"
echo "HTTPie Desktop - HTTP Client - installed as a Uv Tool"

# install the nvim.appimage (automatic only installs nvim and not runtime)
sudo dra download --select *.appimage --install --output ~/.local/bin httpie/desktop

echo "# ---------------------------------------"

echo ""
