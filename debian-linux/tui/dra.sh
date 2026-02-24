#!/usr/bin/env bash

echo ""
echo "# ---------------------------------------"
echo "DRA - Download Release Assests from GitHub - installed in " $installpath
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/devmatteini/dra/refs/heads/main/install.sh | sudo bash -s -- --to /usr/local/bin


# Generate shell command completion
if [[ $SHELL == "/bin/bash" ]]; then
  mkdir -p ~/.local/share/bash-completion/completions/
  dra completion bash > ~/.local/share/bash-completion/completions/dra

if [[ $SHELL == "/usr/bin/zsh" ]]; then
  mkdir -p ~/.local/share/zsh-completion
  dra completion zsh > ~/.local/share/zsh-completion/_dra
else
    echo "Unknown SHELL, Ripgrep completions will not be generated"
    exit 1
fi
echo "# ---------------------------------------"
echo ""
