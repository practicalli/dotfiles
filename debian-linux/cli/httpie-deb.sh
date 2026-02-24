#!/usr/bin/env bash

# INFO: https://httpie.io/docs/cli/debian-and-ubuntu

echo
echo "# ---------------------------------------"
echo "Install HTTPie via Debian Linux package system"
echo

echo "Add HTTPie signing key"
curl -SsL https://packages.httpie.io/deb/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/httpie.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/httpie.gpg] https://packages.httpie.io/deb ./" | sudo tee /etc/apt/sources.list.d/httpie.list > /dev/null
echo

echo
echo "Install Discord package"
sudo apt update && sudo apt install httpie
echo

echo
echo "HTTPie App now available via desktop launcher and command line:"
which httpie
echo "# ---------------------------------------"
echo
