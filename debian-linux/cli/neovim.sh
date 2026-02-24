#!/usr/bin/env bash

echo ""

echo "# ---------------------------------------"
echo "Neovim hyper-configurable editor - installed for all users in `/usr/local/bin`"
# remove the existing nvim binary as DRA fails to override the file
# sudo rm -f /usr/local/bin/nvim

# install the nvim.appimage (automatic only installs nvim and not runtime)
sudo dra download --select nvim-linux-x86_64.appimage --install --output /usr/local/bin neovim/neovim

# Create symbolic link called nvim
sudo ln -s /usr/local/bin/nvim-linux-x86_64.appimage /usr/local/bin/nvim

echo "# ---------------------------------------"

echo ""
