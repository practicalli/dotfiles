#!/usr/bin/env bash

# Install LazyGit latest release from GitHub, for current user
# NOTE: Debian Linux package repository has version 0.50.0 (as October 2026)

echo
echo "# ---------------------------------------"
echo "LazyGit TUI client for Git - integrates with Neovim"

dra download --automatic --install --output ~/.local/bin/ jesseduffield/lazygit

echo
echo "LazyGit version: $(lazygit --version)"
echo "# ---------------------------------------"
echo ""
