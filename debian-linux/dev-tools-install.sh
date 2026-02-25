#!/usr/bin/env bash

# FIX: use variable as dra output value

# Run as user and install tools in ~/.local/bin
# except Neovim which is installed globally (for use as root for administration)

# Define location to install tools (except Neovim)
installpath="$HOMW/.local/bin/"

# Ensure install path exists
mkdir -p "$HOME"/.local/bin

# Ensure local bin is on execution path
export PATH=$HOME/.local/bin:$PATH


# -----------------------------------------------
# Install Developer tools

echo "Install tools for software development outside of the OS package manager"
echo "Binaries are installed in $installpath"
echo "Ensure tools are not already running before running this script to prevent failure"


echo "# ---------------------------------------"
echo "Install Developer tools from latest GitHub Release Assests"
echo "# ---------------------------------------"

echo

echo "# ---------------------------------------"
echo "Installer tools"

# Install binaries from GitHub Releases
./tui/dra.sh

# Install Python as tools, manage venv and packages
./cli/uv.sh
echo "# ---------------------------------------"

echo

echo "# ---------------------------------------"
echo "Desktop Apps"

./app/1password.sh
./app/discord.sh
./app/httpie.sh

echo "# ---------------------------------------"

echo

echo "# ---------------------------------------"
echo "Command Line tools"

./cli/bat.sh
./cli/just.sh
./cli/git-cli.sh
./cli/httpie-deb.sh
# ./cli/httpie-uv-tool.sh
./cli/miniserve.sh
./cli/ripgrep.sh

echo "# ---------------------------------------"

echo

echo "# ---------------------------------------"
echo "TUIs"

./tui/caligula.sh
./tui/journal-view.sh
./tui/lychee.sh
./tui/neovim-current-release.sh
./tui/neovim-pre-release.sh
./tui/nvtop.sh
./tui/shellcheck.sh
./tui/superfile.sh
./tui/xplr.sh
./tui/zenith

echo "# ---------------------------------------"

echo

echo "# ---------------------------------------"
echo "Static Site Generators"

./cli/material-for-mkdocs.sh
./cli/zensical.sh

echo "# ---------------------------------------"

echo

echo "# ---------------------------------------"
echo "Programming Languages"

./language/clojure.sh
./language/clojure-lsp.sh
./language/nodejs-fvm-install-nodejs.sh
# ./language/nodejs-nvm-install-node24.sh
./language/rust-rustup-install.sh

echo "# ---------------------------------------"

echo ""


# Claude.ai
#set -euo pipefail
# curl -fsSL https://claude.ai/install.sh | bash
#
