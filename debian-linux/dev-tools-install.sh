#!/usr/bin/env bash

# FIX: use variable as dra output value

# Run as user and install tools in ~/.local/bin
# except Neovim which is installed globally (for use as root for administration)

# Define location to install tools (except Neovim)
installpath="~/.local/bin/"

# Ensure install path exists
mkdir -p ~/.local/bin

# Ensure local bin is on execution path
export PATH=$HOME/.local/bin:$PATH


# -----------------------------------------------
# Install Developer tools

echo "Install tools for software development outside of the OS package manager"
echo "Binaries are installed in " $installpath
echo "Ensure tools are not already running before running this script to prevent failure"


echo "# ---------------------------------------"
echo "Install Developer tools from latest GitHub Release Assests"
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
echo "Installer tools"

# Install binaries from GitHub Releases
./tui/dra.sh

# Install Python as tools, manage venv and packages
./cli/uv
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
echo "TUIs"

./tui/caligula.sh
./tui/lychee.sh
./tui/nvtop.sh
./tui/shellcheck.sh

echo "# ---------------------------------------"

echo "# ---------------------------------------"
echo "Command Line tools"

./cli/bat.sh
./cli/just.sh
./cli/git-cli.sh
# ./cli/httpie-deb.sh
# ./cli/httpie-uv-tool.sh
./cli/just.sh
./cli/miniserve.sh
./cli/neovim.sh
./cli/ripgrep.sh

echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
echo "Static Site Generators"

./cli/material-for-mkdocs.sh
./cli/zensical.sh

echo "# ---------------------------------------"

echo ""


# Claude.ai
#set -euo pipefail
# curl -fsSL https://claude.ai/install.sh | bash
#
