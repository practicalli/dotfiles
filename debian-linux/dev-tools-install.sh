#!/usr/bin/env bash

# TODO: check if binaries exist
# FIX: use variable as dra output value

# Run as root or sudo (or change installpath to .local/bin)


installpath="/usr/local/bin/"

# -----------------------------------------------
# Install Developer tools

echo "Install tools for software development outside of the OS package manager"
echo "Binaries are installed in " $installpath

echo "# ---------------------------------------"
echo "Install Developer tools from latest GitHub Release Assests"
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
echo "Install DRA - Download Release Assests from GitHub"
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/devmatteini/dra/refs/heads/main/install.sh | bash -s -- --to $installpath
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
echo "install neovim"
# remove the existing nvim binary as DRA fails to override the file
rm -f /usr/local/bin/nvim
dra download --automatic --install --output /usr/local/bin/ neovim/neovim
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
echo "Install GitHub CLI"
dra download --automatic --install --output /usr/local/bin/ cli/cli
echo "# ---------------------------------------"

echo "# ---------------------------------------"
echo "Install UV python package manager"
dra download --automatic --install --output /usr/local/bin/ astral-sh/uv
echo "# ---------------------------------------"
# -----------------------------------------------

echo ""
echo ""
