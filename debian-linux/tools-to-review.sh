#!/usr/bin/env bash

# TODO: Review which of these tools are useful
# some may already be part of Debain Linux packages
# and on the latest version

# -----------------------------------------------
# fd - find entries in the file system
# apt install fdfind
# ❯ fdfind --version
# fdfind 10.2.0

# https://github.com/sharkdp/fd

dra download -i -s "fd-v{tag}-x86_64-unknown-linux-gnu.tar.gz" -o ~/.local/bin sharkdp/fd

fd --gen-completions bash >~/.local/share/bash-completion/completions/fd
fd --gen-completions zsh >~/.local/share/zsh-completion/_fd
# -----------------------------------------------

# -----------------------------------------------
# find files fast

# https://github.com/junegunn/fzf
# apt install fzf
# fzf --version
# 0.60 (devel)

# [ ! -d ~/.fzf ] && git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf || git -C ~/.fzf pull

# ~/.fzf/install --no-key-bindings --completion --no-update-rc
# -----------------------------------------------

# Thinkfan TUI
# https://github.com/karjonas/thinkfan-tui

dra download --automatic --install --output ~/.local/bin/ karjonas/thinkfan-tui

# -----------------------------------------------

# -----------------------------------------------
# CLI benchmark tool
# https://github.com/sharkdp/hyperfine

TMP_DIR=$(mktemp --directory)
ARCHIVE="$TMP_DIR/hyperfine.tar.gz"

dra download -s "hyperfine-v{tag}-x86_64-unknown-linux-musl.tar.gz" -o "$ARCHIVE" sharkdp/hyperfine

tar xf "$ARCHIVE" --strip-components=1 -C "$TMP_DIR"

mv "$TMP_DIR/hyperfine" ~/.local/bin/hyperfine
mv "$TMP_DIR/autocomplete/hyperfine.bash" ~/.local/share/bash-completion/completions/hyperfine
mv "$TMP_DIR/autocomplete/_hyperfine" ~/.local/share/zsh-completion/_hyperfine
# -----------------------------------------------

# -----------------------------------------------
# https://github.com/jdx/mise

dra download -s "mise-v{tag}-linux-x64-musl" -i -o ~/.local/bin/mise jdx/mise

# This tool (same author of mise) is needed for shell completions to work
mise install usage
mise use -g usage

# NOTE: if tab completion breaks, run `mise remove usage --all` and the above commands again
mise completion bash >~/.local/share/bash-completion/completions/mise
mise completion zsh >~/.local/share/zsh-completion/_mise
# -----------------------------------------------

# -----------------------------------------------
# https://github.com/devmatteini/pihole-switch
# DHCP Add Blocker service

dra download -i -s phs.zip -o ~/.local/bin devmatteini/pihole-switch
# -----------------------------------------------

# WARNING: Tool not reviewed yet.

echo
echo "# ---------------------------------------"
echo "Nereid - create & explore Mermaid diagrams, with AI agent support"
dra download --automatic --install --output ~/.local/bin/ bnomei/nereid

echo
echo "Nereid version: $(nereid --version)"
echo "# ---------------------------------------"
echo

# -----------------------------------------------
# Ruff
# Python language lint tool (written in Rust)
dra download -i -s phs.zip -o ~/.local/bin astral-sh/ruff
# -----------------------------------------------

# -----------------------------------------------
# https://code.visualstudio.com/

# -----------------------------------------------
#
#
#
# -----------------------------------------------
# WARN: Failed Installs
#
#
#
#
# WARN: Fails to compile
# Source code only release
echo
echo "# ---------------------------------------"
echo "Thesaurust - dictionary and thesaurus"
# Only source code distributed in GitHub release
# dra download --automatic --install --output ~/.local/bin/ quietpigeon/cargo-thesaurust

# Install (build) from GitHub repository
# cargo install --git https://github.com/quietpigeon/cargo-thesaurust --locked

echo
echo "Thesaurust version: $(thesaurust --version)"
echo "# ---------------------------------------"
echo

echo
echo "# ---------------------------------------"
echo "Tokei - statistics of source code, LoC, Number of files, etc."

# WARNING: Not available via GitHub releases
# dra download --automatic --install --output ~/.local/bin/ XAMPPRocky/tokei

# Compile and install
cargo install --git https://github.com/XAMPPRocky/tokei.git tokei

echo
echo "Tokei version: $(tokei --version)"
echo "# ---------------------------------------"
echo
