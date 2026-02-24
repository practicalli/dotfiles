#!/usr/bin/env bash

# TODO: to test

echo
echo "# ---------------------------------------"
echo "Rust Language using Rustup manager - installed in "

echo "Download and run Rustup official install script"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

echo "Read Rust environment setup - .cargo/env"
source "$HOME"/.cargo/env

echo "Generate Rustup completions"
if [[ $SHELL == "/bin/bash" ]]; then
  mkdir -p ~/.local/share/bash-completion/completions/
  BASH_COMPLETION_DIR="$HOME"/.local/share/bash-completion/completions
  rustup completions bash rustup > "$BASH_COMPLETION_DIR"/rustup
  rustup completions bash cargo > "$BASH_COMPLETION_DIR"/cargo

if [[ $SHELL == "/usr/bin/zsh" ]]; then
  mkdir -p ~/.local/share/zsh-completion
  ZSH_COMPLETION_DIR="$HOME/.local/share/zsh-completion"
  rustup completions zsh rustup > "$ZSH_COMPLETION_DIR"/_rustup
  rustup completions zsh cargo > "$ZSH_COMPLETION_DIR"/_cargo
else
  echo "Unknown SHELL, Ripgrep completions will not be generated"
  exit
fi
echo "# ---------------------------------------"
echo
