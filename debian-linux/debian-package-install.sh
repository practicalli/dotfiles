#!/usr/bin/env bash

# Batch install Debian Linux packages
# Pass file with a list of Debian Linux package names
# Skip packages if they are already installed

# NOTES:
# - apt-get backend used as features of apt UI not required for scripts

echo "# ---------------------------------------"
echo "Debian Package install"

# Package lists to process
add=$1

## Update available Debian packages
echo
echo Update available Debian packages
sudo apt update
echo

# Install Debian packages
while read -r line; do
  echo Install "$line"
  sudo apt-get --yes --ignore-missing install "$line"
done <"$add"
echo

echo

echo Uninstall unnecessary Debian packages
sudo apt-get autopurge
echo

echo Remove Debian package files from cache
sudo apt-get clean
echo

echo "# ---------------------------------------"
