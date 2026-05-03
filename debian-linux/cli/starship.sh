#!/usr/bin/env bash

# Starship Terminal Prompt Theme
# https://github.com/starship/starship

echo
echo "# ---------------------------------------"
echo "Starship - command line prompt theme"
dra download --select starship-x86_64-unknown-linux-gnu.tar.gz --install --output ~/.local/bin starship/starship

if [[ $SHELL == "/bin/bash" ]]; then
  mkdir -p ~/.local/share/bash-completion/completions/
  starship completions bash > ~/.local/share/bash-completion/completions/starship

elif [[ $SHELL == "/usr/bin/zsh" ]]; then
  mkdir -p ~/.local/share/zsh-completion
  starship completions zsh > ~/.local/share/zsh-completion/_starship
else
  echo "Unknown SHELL, completions will not be generated"
  exit ;
fi

echo
echo "# ---------------------------------------"
echo
