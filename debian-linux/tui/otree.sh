#!/usr/bin/env bash

# INFO: Configuration: $HOME/.config/otree.toml
# https://github.com/fioncat/otree/blob/main/config/default.toml

echo
echo "# ---------------------------------------"
echo "OTree - Tree view of JSON/YAML/TOML/XML"
dra download --automatic --install --output ~/.local/bin/ fioncat/otree

echo
echo "Otree version: $(otree --version)"
echo "# ---------------------------------------"
echo
