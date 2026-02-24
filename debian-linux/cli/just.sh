#!/usr/bin/env bash

echo ""

echo "# ---------------------------------------"
echo "Just - task automation - installed in " $installpath
dra download --automatic --install --output ~/.local/bin/ casey/just

if [[ $SHELL == "/bin/bash" ]]; then
  mkdir -p ~/.local/share/bash-completion/completions/
  just --completions bash > ~/.local/share/bash-completion/completions/just

if [[ $SHELL == "/usr/bin/zsh" ]]; then
  mkdir -p ~/.local/share/zsh-completion
  just --completions zsh > ~/.local/share/zsh-completion/_just
else
    echo "Unknown SHELL, Ripgrep completions will not be generated"
    exit 1
fi
echo "# ---------------------------------------"

echo ""
