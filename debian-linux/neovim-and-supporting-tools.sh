#!/usr/bin/env bash

# FIX: use variable as dra output value

# Run as user and install tools in ~/.local/bin
# except Neovim which is installed globally (for use as root for administration)

# Ensure install path exists
mkdir -p "$HOME"/.local/bin

# Ensure local bin is on execution path
export PATH=$HOME/.local/bin:$PATH

# -----------------------------------------------
# Install Supporting tools

./language/nodejs-fvm-install-nodejs.sh
./cli/ripgrep.sh

# Installed via Debian package
# - fd-find
# - luarocks
# - xclip & wl-clipboard

echo "# ---------------------------------------"
echo "Install Neovim"

# Install Neovim binary from GitHub Releases
./tui/neovim-current-release.sh

echo "# ---------------------------------------"

echo ""
echo Install System Clipboard tool - X11 or Wayland
./clipboard.sh
echo

echo Configure Kitty as default terminal
sudo update-alternatives --set x-terminal-emulator "/usr/bin/kitty"
echo
