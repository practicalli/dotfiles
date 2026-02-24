#!/usr/bin/env bash

# Install the pre-release version of Neovim from GitHub, for the current user

echo
echo "# ---------------------------------------"
echo "Neovim hyper-configurable editor"
echo "- installed only for current user"

# Install nvim.appimage nightly release tag and rename to nvim-nightly
dra download --tag nightly --select nvim-linux-x86_64.appimage --install --output ~/.local/bin/nvim-nightly neovim/neovim

echo
echo "Neovim pre-release version: $(nvim-nightly --version)"
echo "# ---------------------------------------"
echo
