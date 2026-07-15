#!/usr/bin/env bash

echo
echo "# ---------------------------------------"
echo "Bat - cat on steroids"
dra download --automatic --install --output ~/.local/bin/ aristocratos/btop

if [[ $SHELL == "/bin/bash" ]]; then
  mkdir -p ~/.local/share/bash-completion/completions/
  btop --completion bash >~/.local/share/bash-completion/completions/bat

elif [[ $SHELL == "/usr/bin/zsh" ]]; then
  mkdir -p ~/.local/share/zsh-completion
  btop --completion zsh >~/.local/share/zsh-completion/_bat
else
  echo "Unknown SHELL, Ripgrep completions will not be generated"
  exit
fi

echo
echo "Btop version: $(btop --version)"
echo "# ---------------------------------------"
echo
