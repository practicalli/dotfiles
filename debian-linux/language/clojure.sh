#!/usr/bin/env bash

# NOTE: run this script after setting up preferred shell, e.g. zsh
# Pass directory path to install in different location

echo
echo "# ---------------------------------------"
echo "Clojure CLI via official script"

# Run the Clojure CLI install script for the latest release:
# https://github.com/Schniz/fnm
curl -L -O https://github.com/clojure/brew-install/releases/latest/download/linux-install.sh

echo "Make script executable"
chmod +x linux-install.sh

if [ ! $# -eq 0 ]; then
  echo "Installing Clojure CLI in $1"
  ./linux-install.sh --prefix "$1"
else
  echo "Install Clojure CLI in /usr/local/bin"
  sudo ./linux-install.sh
fi

echo
echo "Install Practicalli Clojure CLI Config in ~/.config/clojure"
git clone --depth=1 https://github.com/practicalli/clojure-cli-config "$HOME"/.config/clojure
echo

# Verify the Clojure CLI version:
echo "Clojure CLI Path: $(which clojure)"
echo "Clojure CLI version: $(clojure --version)"
echo "# ---------------------------------------"
echo
