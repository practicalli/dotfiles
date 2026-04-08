#!/usr/bin/env bash

# NOTE: run this script before setting up other tools
# and after cloning Practicalli Dotfiles

echo
echo "Zsh shell and Prezto Configuration"

# Install Zsh
sudo apt install zsh

# Switch to Zsh shell

# Install Prezto config
#
# - Install only if XDG_CONFIG_HOME is set

echo "Set XDG environment variables"
# TODO: consider placing XDG setup in its own script
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:=$HOME/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:=$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:=$HOME/.local/state}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:=$HOME/.cache}"
export ZDOTDIR="${ZDOTDIR:=$XDG_CONFIG_HOME/zsh}"

if [ -d "$XDG_CONFIG_HOME"="$HOME"/.config ]; then
  echo "Install Prezto in $XDG_CONFIG_HOME/zsh"
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-${XDG_CONFIG_HOME:-$HOME/.config}/zsh}/.zprezto"

  echo
  echo "Create Zsh configuration with Practicalli customisation"

  # TODO: Consider customised login and logout scripts
  # Login shows system config or emoticon
  # Logout does nothing as its output is rarely seen
  ln -s "${ZDOTDIR}/.zprezto/runcoms/zlogin" "${ZDOTDIR}/.zlogin"
  ln -s "${ZDOTDIR}/.zprezto/runcoms/zlogout" "${ZDOTDIR}/.zlogout"

  ln -s "${HOME}/projects/practicalli/dotfiles/zsh/zpreztorc" "${ZDOTDIR}/.zpreztorc"
  ln -s "${HOME}/projects/practicalli/dotfiles/zsh/zprofile" "${ZDOTDIR}/.zprofile"
  ln -s "${HOME}/projects/practicalli/dotfiles/zsh/zshenv" "${ZDOTDIR}/.zshenv"
  ln -s "${HOME}/projects/practicalli/dotfiles/zsh/zshrc" "${ZDOTDIR}/.zshrc"

  # Prezto script to link Zsh config files - not used
  # setopt EXTENDED_GLOB
  # for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  #   ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  # done

else
  echo "Setup XDG_CONFIG_HOME before installing Zsh and Prezto (or fix this script)"
fi

echo
echo "Set zsh as default shell"
chsh --shell /usr/bin/zsh

# Verify Zsh is current shell:
echo
echo "Current Shell: " "$SHELL"
echo "# ---------------------------------------"
echo
