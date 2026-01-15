#!/usr/bin/env bash

# Batch install Debian Linux packages used by Practicalli
# Skip packages if they are already installed

# NOTES:
# - `apt-get` command used as features of `apt` UI not required for scripts

# Package lists to process
add="debian-linux-post-install-packages-add.list"
purge="debian-linux-post-install-packages-purge.list"

## Update available Debian packages
echo
echo "# ---------------------------------------"
echo Update available Debian packages
apt update
echo ""


# Install additional Debian packages
while read -r line
do
  echo ""
  echo Install "$line"
  apt-get --yes --ignore-missing install "$line"
done < "$add"
echo ""

# Remove additional Debian packages
while read -r line
do
  echo
  echo Purge "$line"
  echo
  apt-get purge --yes --ignore-missing "$line"
done < "$purge"

## Uninstall Debian packages no longer required
echo
echo Uninstall unnecessary Debian packages
apt-get autopurge
echo ""

## Remove Debian package files from cache
echo
echo Remove Debian package files from cache
apt-get clean
echo "# ---------------------------------------"
echo ""
