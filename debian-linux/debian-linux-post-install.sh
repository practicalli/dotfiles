#!/usr/bin/env bash

# Batch install Debian Linux packages used by Practicalli
# Skip packages if they are already installed

# NOTES:
# - apt-get backend used as features of apt UI not required for scripts

# Package lists to process
add="debian-linux-post-install-packages-add.list"
purge="debian-linux-post-install-packages-purge.list"

## Update available Debian packages
echo
echo "# ---------------------------------------"
echo Update available Debian packages
sudo apt update
echo "# ---------------------------------------"
echo

# Install additional Debian packages
while read -r line
do
  echo "# ---------------------------------------"
  echo Install "$line"
  sudo apt-get --yes --ignore-missing install "$line"
  echo "# ---------------------------------------"
done < "$add"
echo

echo "# ---------------------------------------"
echo Install System Clipboard tool - X11 or Wayland
./clipboard.sh
echo "# ---------------------------------------"
echo

# Remove additional Debian packages
while read -r line
do
  echo
  echo "# ---------------------------------------"
  echo Purge "$line"
  echo "# ---------------------------------------"
  echo
  sudo apt-get purge --yes --ignore-missing "$line"
done < "$purge"
echo

echo "# ---------------------------------------"
echo Uninstall unnecessary Debian packages
sudo apt-get autopurge
echo "# ---------------------------------------"
echo

echo "# ---------------------------------------"
echo Remove Debian package files from cache
sudo apt-get clean
echo "# ---------------------------------------"
echo
