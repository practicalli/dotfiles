#!/usr/bin/env bash

# INFO: Practicalli prefers DRA install approach in clojure-lsp.sh
# This file is not used, but should work as it uses the official Clojure LSP script

echo
echo "# ---------------------------------------"
echo "Clojure LSP install via Official Script"

# Run the Clojure CLI install script for the latest release:
# https://github.com/Schniz/fnm
sudo bash < <(curl -s https://raw.githubusercontent.com/clojure-lsp/clojure-lsp/master/install)


echo
echo "Install Practicalli Clojure LSP Config in ~/.config/clojure-lsp"
git clone --depth=1 https://github.com/practicalli/clojure-lsp-config "$HOME"/.config/clojure-lsp
echo

# Verify the Clojure LSP version:
echo "Clojure LSP version: $(clojure-lsp --version)"
echo "# ---------------------------------------"
echo
