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
echo "HTTP Client - installed as Uv Tool"

uv tool install --with wheel httpie --upgrade
echo "# ---------------------------------------"
echo



# Python Pip approach
# python -m pip install --upgrade pip wheel
#
# python -m pip install httpie
