#!/usr/bin/env bash

echo
echo "# ---------------------------------------"
echo "Bat - cat on steroids - installed in " $installpath
dra download --automatic --install --output ~/.local/bin/ sharkdp/bat

if [[ $SHELL == "/bin/bash" ]]; then
  mkdir -p ~/.local/share/bash-completion/completions/
  bat --completion bash > ~/.local/share/bash-completion/completions/bat

if [[ $SHELL == "/usr/bin/zsh" ]]; then
  mkdir -p ~/.local/share/zsh-completion
  bat --completion zsh > ~/.local/share/zsh-completion/_bat
else
  echo "Unknown SHELL, Ripgrep completions will not be generated"
  exit
fi
echo "# ---------------------------------------"
echo
