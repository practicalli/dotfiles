#!/usr/bin/env bash

# -----------------------------------------------
# Python packages as tools (uv)
# run as user (not root)

if [ "$(whoami)" = "root" ]
then
 echo "Run the uv tool install script with your user account. Do not run as root or via sudo"
 exit
fi

echo
echo "# ---------------------------------------"
echo "Install Zensical - updates if already installed"
uv tool install zensical --upgrade
echo
echo "Zensical version: $(zensical --version)"
echo "# ---------------------------------------"
echo
