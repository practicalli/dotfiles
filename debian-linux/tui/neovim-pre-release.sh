#!/usr/bin/env bash

# Install the pre-release version of Neovim from GitHub, for the current user

echo "# ---------------------------------------"
echo "Neovim hyper-configurable editor - installed for all users in `/usr/local/bin`"
# remove the existing nvim binary as DRA fails to override the file
# sudo rm -f /usr/local/bin/nvim

# Install nvim.appimage nightly release tag and rename to nvim-nightly
dra download --tag nightly --select nvim-linux-x86_64.appimage --install --output ~/.local/bin/nvim-nightly neovim/neovim

echo "# ---------------------------------------"
echo ""
