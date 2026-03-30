#!/usr/bin/env bash

echo
echo "# ---------------------------------------"
echo "DRA - Download Release Assests from GitHub"

DOWNLOAD_URL=$(curl -s https://api.github.com/repos/devmatteini/dra/releases/latest | grep browser_download_url | grep .deb | cut -d '"' -f 4)

curl -s -L -o ~/tmp/dra.deb "$DOWNLOAD_URL"

sudo apt install /tmp/dra.deb

# Generate shell command completion
if [[ $SHELL == "/bin/bash" ]]; then
  mkdir -p ~/.local/share/bash-completion/completions/
  dra completion bash > ~/.local/share/bash-completion/completions/dra

elif [[ $SHELL == "/usr/bin/zsh" ]]; then
  mkdir -p ~/.local/share/zsh-completion
  dra completion zsh > ~/.local/share/zsh-completion/_dra
else
  echo "Unknown SHELL, Ripgrep completions will not be generated"
  exit
fi

echo
echo "Dra version: $(dra --version)"
echo "# ---------------------------------------"
echo
