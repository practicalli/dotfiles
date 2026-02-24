#!/usr/bin/env bash

echo
echo "# ---------------------------------------"
echo "Caligula - ISO image copy tool"
dra download --automatic --install --output ~/.local/bin/ ifd3f/caligula

echo
echo "Caligula version: $(caligula --version)"
echo "# ---------------------------------------"
echo
