#!/usr/bin/env bash

echo
echo "# ---------------------------------------"
echo "Install Lychee hyperling checker"
dra download --automatic --install --output ~/.local/bin lycheeverse/lychee

echo
echo "Lychee version: $(lychee --version)"
echo "# ---------------------------------------"
echo
