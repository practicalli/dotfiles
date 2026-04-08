#!/usr/bin/env bash

# NOTE: run this script after setting up preferred shell, e.g. zsh
# Pass directory path to install in different location

echo
echo "# ---------------------------------------"
echo "Clojure CLI via official script"

# Run the Clojure CLI install script for the latest release:
# https://github.com/Schniz/fnm
curl -L -O https://github.com/clojure/brew-install/releases/latest/download/linux-install.sh --output /tmp/clojure-cli-install.sh

echo "Make script executable"
chmod +x /tmp/clojure-cli-install.sh
if [ ! $# -eq 0 ]; then
  echo "Installing Clojure CLI in $1"
  /tmp/clojure-cli-install.sh --prefix "$1"
else
  echo "Install Clojure CLI in /usr/local/bin"
  sudo /tmp/clojure-cli-install.sh
fi

echo "Remove install script"
rm -f /tmp/clojure-cli-install.sh
echo

# Move existing config to a backup file
if [ -d "$XDG_CONFIG_HOME"/clojure ]; then
  echo "Backup Clojure CLI Config from $XDG_CONFIG_HOME/clojure"
  mv "$XDG_CONFIG_HOME"/clojure "$XDG_CONFIG_HOME"/clojure-backup-"$(date +%Y.%m.%d)"
elif [ -d "$HOME"/.clojure ]; then
  echo "Install Clojure CLI Config in $HOME/.clojure"
  mv "$HOME"/.clojure "$HOME"/.clojure-backup-"$(date +%Y.%m.%d)"
else
  echo "No existing Clojure CLI Config found"
fi
echo

echo "Install Practicalli Clojure CLI Config"
# Check if XDG_CONFIG_HOME is set
if [[ -v XDG_CONFIG_HOME ]]; then
  echo "Install Clojure CLI Config in $XDG_CONFIG_HOME/clojure"
  git clone --depth=1 https://github.com/practicalli/clojure-cli-config "$XDG_CONFIG_HOME"/clojure
else
  echo "Install Clojure CLI Config in $HOME/.clojure"
  git clone --depth=1 https://github.com/practicalli/clojure-cli-config "$HOME"/.clojure
fi
echo

# Verify the Clojure CLI version:
echo "Clojure CLI Path: $(which clojure)"
echo "Clojure CLI version: $(clojure --version)"
echo "# ---------------------------------------"
echo
