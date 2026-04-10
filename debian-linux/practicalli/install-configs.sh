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

  # Check for Git Client
  if [ -d "$HOME"/.ssh] && [command -v "git" > /dev/null 2>&1]; then
    echo "Using Git client & SSH to clone Practicalli Dotfiles repository"
    git clone --depth=1 git@github.com:practicalli/dotfiles ~/projects/practicalli/dotfiles
  elif [ command -v "gh" > /dev/null 2>&1 ]; then
    # echo "GitHub CLI login"
    # gh auth login

    echo "Using GitHub CLI to clone Practicalli Dotfiles repository"
    gh repo clone practicalli/dotfiles ~/projects/practicalli/dotfiles -- --depth=1
  else
    # Download the zip and extract
    echo "Downloading Zip file of Practicalli Dotfiles repository"
    curl --fail --location --silent --show-error --output /tmp/practicalli-dotfiles.zip "https://github.com/practicalli/dotfiles/archive/refs/heads/main.zip"
    unzip /tmp/practicalli-dotfiles.zip -d "$HOME/projects/practicalli/dotfiles"
    echo
    echo "Practicalli Dotfiles installed at: $HOME/projects/practicalli/dotfiles"
  fi

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
