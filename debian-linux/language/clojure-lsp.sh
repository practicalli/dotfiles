#!/usr/bin/env bash

echo
echo "# ---------------------------------------"
echo "Clojure LSP install via DRA"
dra download --automatic --install --output ~/.local/bin/ clojure-lsp/clojure-lsp

echo
echo "Install Practicalli Clojure LSP Config in ~/.config/clojure-lsp"
git clone --depth=1 https://github.com/practicalli/clojure-lsp-config "$HOME"/.config/clojure-lsp
echo

# Verify the Clojure LSP version:
echo "Clojure LSP version: "
echo "$(clojure-lsp --version)"
echo "# ---------------------------------------"
echo
