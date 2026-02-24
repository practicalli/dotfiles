#!/usr/bin/env bash

# -----------------------------------------------
# Practicalli Configuration for development environment

# NOTE: dotfiles repo contains these scripts, so should already be downloaded
# Although maybe download as a zip file (or release)
# and this script clones the repository to maintain the config and push updates


# echo "# ---------------------------------------"
# echo "Practicalli Configuration"
# echo "# ---------------------------------------"

# echo ""

# Configure system

# Create directories for Practicalli projects
# Check they exist
# $HOME/projects/practicalli/books
# $HOME/projects/practicalli/books-new

# GitHub CLI login
# gh auth login

# echo "# ---------------------------------------"
# echo "Install Practicalli Dotfiles"
#
# echo "# ---------------------------------------"

# gh repo clone practicalli/dotfiles ~/projects/practicalli/ --depth 1

# echo "# ---------------------------------------"
# echo "Configure Git Client"
# echo "# ---------------------------------------"

# echo "# ---------------------------------------"
# echo "Configure Zsh"
# echo "# ---------------------------------------"

# Terminal Prompt

# https://github.com/starship/starship

# echo "# ---------------------------------------"
# echo "Starship Terminal Prompt"
dra download -s starship-x86_64-unknown-linux-gnu.tar.gz -i -o ~/.local/bin starship/starship

starship completions bash > ~/.local/share/bash-completion/completions/starship
starship completions zsh > ~/.local/share/zsh-completion/_starship
# echo "# ---------------------------------------"


# echo "# ---------------------------------------"
# echo "Install Clojure CLI Configuration"
# echo "# ---------------------------------------"


# echo ""
# echo ""
#
# echo "# ---------------------------------------"
# echo "Clone Practicalli Books"
# echo "# ---------------------------------------"

# gh repo clone practicalli/cycling ~/projects/practicalli/books-new/cycling --depth 1
