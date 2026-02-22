#!/usr/bin/env bash

# TODO: check if binaries exist
# FIX: use variable as dra output value

# Run as user and install tools in ~/.local/bin
# except Neovim which is installed globally (for use as root for administration)


installpath="~/.local/bin/"

# Ensure install path exists
mkdir -p ~/.local/bin

export PATH=$HOME/.local/bin:$PATH

# Ensure shared completion directories exist
mkdir -p ~/.local/share/bash-completion/completions
mkdir -p ~/.local/share/zsh-completion/completions

# -----------------------------------------------
# Install Developer tools

echo "Install tools for software development outside of the OS package manager"
echo "Binaries are installed in " $installpath

echo "# ---------------------------------------"
echo "Install Developer tools from latest GitHub Release Assests"
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
echo "DRA - Download Release Assests from GitHub - installed in " $installpath
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/devmatteini/dra/refs/heads/main/install.sh | sudo bash -s -- --to /usr/local/bin

# Generate shell command completion
dra completion bash > ~/.local/share/bash-completion/completions/dra
dra completion zsh > ~/.local/share/zsh-completion/_dra
echo "# ---------------------------------------"

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

echo "# ---------------------------------------"
echo "GitHub CLI - installed in " $installpath
dra download --automatic --install --output ~/.local/bin cli/cli
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
echo "UV python package manager - installed in " $installpath
dra download --automatic --install --output ~/.local/bin/ astral-sh/uv
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
echo "Install Lychee hyperling checker - installed in " $installpath
dra download --automatic --install --output ~/.local/bin lycheeverse/lychee
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
echo "Caligula - ISO image copy tool - installed in " $installpath
dra download --automatic --install --output ~/.local/bin/ ifd3f/caligula
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
echo "Bat - cat on steroids - installed in " $installpath
dra download --automatic --install --output ~/.local/bin/ sharkdp/bat

bat --completion bash > ~/.local/share/bash-completion/completions/bat
bat --completion zsh > ~/.local/share/zsh-completion/_bat
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
echo "Miniserve - serve websites  on the command line - installed in " $installpath
dra download --automatic --install --output ~/.local/bin/ svenstaro/miniserve

miniserve --print-completions bash > ~/.local/share/bash-completion/completions/miniserve
miniserve --print-completions zsh > ~/.local/share/zsh-completion/_miniserve
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
echo "Miniserve - serve websites  on the command line - installed in " $installpath
dra download --automatic --install --output ~/.local/bin/ svenstaro/miniserve

miniserve --print-completions bash > ~/.local/share/bash-completion/completions/miniserve
miniserve --print-completions zsh > ~/.local/share/zsh-completion/_miniserve
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
echo "Just - task automation - installed in " $installpath
dra download --automatic --install --output ~/.local/bin/ casey/just

just --completions bash > ~/.local/share/bash-completion/completions/just
just --completions zsh > ~/.local/share/zsh-completion/_just
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
echo "NVTop - monitor GPUs - installed in " $installpath
dra download --automatic --install --output ~/.local/bin/ Syllo/nvtop
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
# Cannot find asset that matches your system linux x86_64
echo "HTTPie CLI - HTTP Client - installed in " $installpath
# dra download --automatic --install --output ~/.local/bin/ httpie/cli
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
# Cannot find asset that matches your system linux x86_64
echo "HTTPie Desktop - HTTP Client - installed in " $installpath
# TODO: may need to run via https://github.com/TheAssassin/AppImageLauncher/wiki
# dra download --automatic --install --output ~/.local/bin/ httpie/desktop
echo "# ---------------------------------------"

echo ""


echo "# ---------------------------------------"
echo "Ripgrep - line oriented search tool - installed in " $installpath
# INFO: Debian Linux currently 14.1.1
dra download --automatic --install --output ~/.local/bin/ BurntSushi/ripgrep

rg --generate complete-bash > ~/.local/share/bash-completion/completions/rg
rg --generate complete-zsh > ~/.local/share/zsh-completion/_rg
echo "# ---------------------------------------"

echo ""

echo "# ---------------------------------------"
echo "Shellcheck - shell script static analysis tool - installed in " $installpath
# INFO: Debian Linux currently 0.10.0
dra download --automatic --install --output ~/.local/bin/ koalaman/shellcheck
echo "# ---------------------------------------"

echo ""


#

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
