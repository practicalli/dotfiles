#!/usr/bin/env bash

# Batch purge Debian Linux packages
# Pass file with a list of Debian Linux package names
# Skip packages if they are not installed

# NOTES:
# - apt-get backend used as features of apt UI not required for scripts

echo "# ---------------------------------------"
echo "Debian Package Purge"

# Package lists to process
purge=$1

## Update available Debian packages
echo
echo Update available Debian packages
sudo apt update
echo

# Remove Debian packages
while read -r line; do
  echo Purge "$line"
  sudo apt-get purge --yes --ignore-missing "$line"
done <"$purge"
echo

echo Uninstall unnecessary Debian packages
sudo apt-get autopurge
echo

echo Remove Debian package files from cache
sudo apt-get clean
echo
echo "# ---------------------------------------"
