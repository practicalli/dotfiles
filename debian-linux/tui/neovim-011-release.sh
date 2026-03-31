#!/usr/bin/env bash

# Install the current release version of Neovim from GitHub for all users

echo
echo "# ---------------------------------------"
echo "Neovim hyper-configurable editor - installed for all users"

# install the nvim.appimage (automatic only installs nvim and not runtime)
# rename file to `nvim` the standard executable name
dra download  --tag v0.11.7 --select nvim-linux-x86_64.appimage --install --output "$HOME"/.local/bin/nvim11 neovim/neovim

echo
echo "Neovim version: $(nvim11 --version)"
echo "# ---------------------------------------"
echo ""
