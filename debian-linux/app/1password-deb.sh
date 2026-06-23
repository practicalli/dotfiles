#!/usr/bin/env bash

# 1Password Desktop app for password management
# https://support.1password.com/install-linux/

echo
echo "# ---------------------------------------"
echo "Install 1Password via Debian Linux package system"
echo

echo
echo "Add the GPG key for the 1Password Apt Archive"
if [ -f "/usr/share/keyrings/1password-archive-keyring.gpg" ]; then
    echo "1Password Archive Keyring already exists in /usr/share/keyrings/1password-archive-keyring.gpg"
else
    curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg
fi
echo

echo
echo "Add 1Password to the list of Apt repositories"
if [ -f "/etc/apt/sources.list.d/1password.list" ]; then
    echo "1Password already added to Apt Sources in /etc/apt/sources.list.d/1password.list"
else
    echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/amd64 stable main' | sudo tee /etc/apt/sources.list.d/1password.list
fi
echo

echo
echo "Add the debsig-verify policy:"
if [ -f "/etc/debsig/policies/AC2D62742012EA22/1password.pol" ]; then
    echo "1Password Debian Sign Policies already exists in /etc/debsig/policies/AC2D62742012EA22/"
else
    sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/
 	curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol
fi
echo

echo
echo "Add the debsig-verify GPG Key:"
if [ -f "/usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg" ]; then
    echo "1Password Debian Sign GPG Key already exists in /etc/debsig/policies/AC2D62742012EA22/"
else
    sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22
   	curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg
fi
echo

echo
echo "Install 1Password package"
sudo apt update && sudo apt install 1password
echo

echo
echo "1Password App now available via desktop launcher and command line:"
which 1password
echo "# ---------------------------------------"
echo
