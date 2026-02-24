#!/usr/bin/env bash

# Install the current release version of Neovim from GitHub for all users

echo
echo "# ---------------------------------------"
echo "Neovim hyper-configurable editor - installed for all users"

# install the nvim.appimage (automatic only installs nvim and not runtime)
# rename file to `nvim` the standard executable name
sudo dra download --select nvim-linux-x86_64.appimage --install --output /usr/local/bin/nvim neovim/neovim

echo
echo "Neovim version: $(neovim --version)"
echo "# ---------------------------------------"
echo ""
