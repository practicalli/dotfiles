#!/usr/bin/env bash

echo
echo "# ---------------------------------------"
echo "Ripgrep - line oriented search tool"
# INFO: Debian Linux currently 14.1.1

dra download --automatic --install --output ~/.local/bin/ BurntSushi/ripgrep

if [[ $SHELL == "/bin/bash" ]]; then
  mkdir -p ~/.local/share/bash-completion/completions/
  rg --generate complete-bash > ~/.local/share/bash-completion/completions/rg

elif [[ $SHELL == "/usr/bin/zsh" ]]; then
  mkdir -p ~/.local/share/zsh-completion
  rg --generate complete-zsh > ~/.local/share/zsh-completion/_rg
else
    echo "Unknown SHELL, Ripgrep completions will not be generated"
    exit
fi

echo
echo "Ripgrep version: $(rg --version)"
echo "# ---------------------------------------"
echo
