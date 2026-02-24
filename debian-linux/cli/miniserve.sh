#!/usr/bin/env bash

echo
echo "# ---------------------------------------"
echo "Miniserve - serve websites  on the command line - installed in " $installpath
dra download --automatic --install --output ~/.local/bin/ svenstaro/miniserve

if [[ $SHELL == "/bin/bash" ]]; then
  mkdir -p ~/.local/share/bash-completion/completions/
  miniserve --print-completions bash > ~/.local/share/bash-completion/completions/miniserve

if [[ $SHELL == "/usr/bin/zsh" ]]; then
  mkdir -p ~/.local/share/zsh-completion
  miniserve --print-completions zsh > ~/.local/share/zsh-completion/_miniserve
else
    echo "Unknown SHELL, Ripgrep completions will not be generated"
    exit
fi
echo "# ---------------------------------------"
echo
