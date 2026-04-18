#!/usr/bin/env bash

echo
echo "# ---------------------------------------"
echo "Deadbranch - remove git branches"
dra download --automatic --install --output ~/.local/bin/ armgabrielyan/deadbranch

if [[ $SHELL == "/bin/bash" ]]; then
  mkdir -p ~/.local/share/bash-completion/completions/
  deadbranch --completions bash > ~/.local/share/bash-completion/completions/deadbranch

elif [[ $SHELL == "/usr/bin/zsh" || $SHELL == "/bin/zsh" ]]; then
  mkdir -p ~/.local/share/zsh-completion
  deadbranch completions zsh > ~/.local/share/zsh-completion/_deadbranch
else
  echo "Unknown SHELL, completions will not be generated"
  exit
fi

# Recommended zsh completion
# mkdir -p ~/.zfunc
# deadbranch completions zsh >~/.zfunc/_deadbranch
#
# add to ~/.zshrc before compinit call (or add it if you don't have one):
#
# fpath=(~/.zfunc $fpath)
# autoload -Uz compinit && compinit

echo
echo "Deadbranch version: $(deadbranch --version)"
echo "# ---------------------------------------"
echo
