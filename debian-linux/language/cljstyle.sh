#!/usr/bin/env bash

echo
echo "# ---------------------------------------"
echo "Cljstyle - format Clojure code"
dra download --automatic --install --output ~/.local/bin/ greglook/cljstyle
echo

# Verify the Cljstyle version:
echo "Clojure LSP version: "
cljstyle version
echo "# ---------------------------------------"
echo
