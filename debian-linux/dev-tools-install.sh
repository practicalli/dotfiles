#!/usr/bin/env bash

# TODO: check if binaries exist
# FIX: use variable as dra output value
# TODO: automate github login?

# Run as root or sudo

# Installs tools for software development outside of the OS package manager
# Binaries are installed in `/usr/local/bin`

installpath="/usr/local/bin/"

echo "# ---------------------------------------"
echo "Install Developer tools from latest GitHub Release Assests"
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
echo "Install DRA - Download Release Assests from GitHub"
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/devmatteini/dra/refs/heads/main/install.sh | bash -s -- --to $installpath
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------
echo "install neovim"
dra download --automatic --install --output /usr/local/bin/ neovim/neovim
echo "# ---------------------------------------

echo ""

echo "# ---------------------------------------
echo "Install GitHub CLI"
dra download --automatic --install --output /usr/local/bin/ cli/cli
echo "# ---------------------------------------

echo "# ---------------------------------------
echo "Install UV python package manager"
echo "# ---------------------------------------

# Download latest binary from GitHub releases
dra download --automatic --install --output /usr/local/bin/ astral-sh/uv
# -----------------------------------------------

echo ""
echo ""

echo "# ---------------------------------------"
echo "Practicalli Configuration"
echo "# ---------------------------------------"

echo ""

# Configure system

# Create directories for Practicalli projects
# Check they exist
# $HOME/projects/practicalli/books
# $HOME/projects/practicalli/books-new

# GitHub CLI login
# gh auth login

# echo "# ---------------------------------------
# echo "Install Practicalli Dotfiles"
# echo "# ---------------------------------------

# gh repo clone practicalli/dotfiles ~/projects/practicalli/ --depth 1

# echo "# ---------------------------------------
# echo "Configure Git Client"
# echo "# ---------------------------------------

# echo "# ---------------------------------------
# echo "Configure Zsh"
# echo "# ---------------------------------------

# echo "# ---------------------------------------
# echo "Install Practicalli Clojure Dotfiles"
# echo "# ---------------------------------------


echo ""
echo ""

echo "# ---------------------------------------"
echo "Clone Practicalli Books"
echo "# ---------------------------------------"

# gh repo clone practicalli/cycling ~/projects/practicalli/books-new/cycling --depth 1
