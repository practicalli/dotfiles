#!/usr/bin/env bash

# -----------------------------------------------
# Practicalli Configuration

# NOTE: Run after `./dev-tools-install.sh`
# Links `~./config` to files in Practicalli dotfiles repo
# Depends on

echo "# ---------------------------------------"
echo "Practicalli Configuration"
echo
echo "Install Practicalli Dotfiles"

if [ ! -d "$HOME"/projects/practicalli/dotfiles ]; then

  echo "GitHub CLI login"
  gh auth login

  echo "Clone Practicalli Dotfiles repository"
  gh repo clone practicalli/dotfiles ~/projects/practicalli/ --depth 1
else
  echo "Practicalli Dotfiles already installed"
fi

echo
echo "Link Practicalli Configurations"

ln -s ~/projects/practicalli/dotfiles/git/ ~/.config/git
ln -s ~/projects/practicalli/dotfiles/kitty/ ~/.config/kitty
ln -s ~/projects/practicalli/dotfiles/marksman ~/.config/marksman
ln -s ~/projects/practicalli/dotfiles/shell-aliases ~/.config/shell-aliases
ln -s ~/projects/practicalli/dotfiles/starship.toml ~/.config/starship.toml

# INFO: Clojure, Clojure LSP, Neovim and Zsh configuration installed via their respective scripts

echo "# ---------------------------------------"
