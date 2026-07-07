#!/usr/bin/env bash

# INFO: Proton Pass for Linux:
# https://proton.me/support/set-up-proton-pass-linux#download

echo
echo "# ---------------------------------------"
echo "Proton-pass Desktop app for secrets management"
echo "Installed via Debian Linux package system"
echo

echo "Download official Proton-pass Debian Package"
curl --fail --location --silent --show-error "https://proton.me/download/PassDesktop/linux/x64/ProtonPass.deb" --output /tmp/proton-pass-latest.deb
echo

echo "Install Proton-pass package"
sudo apt-get install /tmp/proton-pass-latest.deb
echo

echo "Proton-pass App now available via desktop launcher and command line:"
echo "Execution path: $(which proton-pass)"
# No version option on command line
# echo "Proton-pass version: $(proton-pass --version)"
echo "# ---------------------------------------"
echo
