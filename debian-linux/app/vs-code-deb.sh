#!/usr/bin/env bash

# INFO: VS Code Download page:
# https://code.visualstudio.com/download

echo
echo "# ---------------------------------------"
echo "VS Code editor"
echo "Installed via Debian Linux package system"
echo

echo "Download official VS Code Debian Package"
wget "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" --output-document=/tmp/vscode_amd64.deb
echo

echo "Install VS Code package"
sudo apt-get install /tmp/vscode_amd64.deb
echo

echo "VS Code now available via desktop launcher and command line:"
echo "Slack version: $(code --version)"
echo "# ---------------------------------------"
echo
