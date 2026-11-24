#!/usr/bin/env bash

# NOTE: run this script after setting up preferred shell, e.g. zsh
# Pass directory path as first argument to install in different location

echo
echo "# ---------------------------------------"
echo "Clojure CLI via official script"

# Remove previous install file
if [ -f /tmp/clojure-cli-install.sh ]; then
  rm -f /tmp/clojure-cli-install.sh
fi

echo "Download latest release of Clojure CLI install script":
curl --fail --location --silent --show-error "https://github.com/clojure/brew-install/releases/latest/download/linux-install.sh" --output /tmp/clojure-cli-install.sh
echo

echo "Make script executable"
chmod +x /tmp/clojure-cli-install.sh
echo

echo "Check for custom install location... (first argument to command)"
if [ ! $# -eq 0 ]; then
  echo "Installing Clojure CLI in $1  (custom location)"
  /tmp/clojure-cli-install.sh --prefix "$1"
else
  echo "Install Clojure CLI in /usr/local/bin  (default location)"
  sudo /tmp/clojure-cli-install.sh
fi
echo

echo "Remove install script"
rm -f /tmp/clojure-cli-install.sh
echo

# ------

echo "Practicalli Clojure CLI Config"

echo "Check location of existing config (exit script if symbolic link found)"
if [[ -L "$XDG_CONFIG_HOME"/clojure ]]; then
  echo "Practicalli Clojure CLI set via a symbolic link - all set"
  exit 0
elif [[ -L "$HOME"/.clojure ]]; then
  echo "Practicalli Clojure CLI set via a symbolic link - all set"
  exit 0
elif [ -d "$XDG_CONFIG_HOME"/clojure ]; then
  clojure_config_dir="$XDG_CONFIG_HOME"/clojure
elif [ -d "$HOME"/.clojure ]; then
  clojure_config_dir="$HOME"/.clojure
else
  echo "No existing Clojure CLI Config found"
  clojure_config_dir=
fi
echo

# clojure_config_dir="$HOME/config/cloure"
# backup="$HOME/config/cloure_config_backup_$(date +%Y%m%d_%H%M%S)"

if [[ ! -d "$clojure_config_dir" ]]; then
  echo "Directory $clojure_config_dir does not exist."
  echo "No existing Clojure CLI Config found"
  exit 1
fi

while true; do
  read -r -p "Install Practicalli Clojure Config (backup $clojure_config_dir)? (y/yes/n/no): " answer
  case "${answer,,}" in
  y | yes)
    mv "$clojure_config_dir" "${clojure_config_dir}-backup-$(date +%Y-%m-%d_%H-%M-%S)"
    echo "Backup Clojure CLI Config in $clojure_config_dir"

    echo "Install Clojure CLI Config in $clojure_config_dir"
    git clone --depth=1 https://github.com/practicalli/clojure-cli-config "${clojure_config_dir}"
    break
    ;;
  n | no)
    echo "Backup skipped. $clojure_config_dir was left untouched."
    break
    ;;
  *)
    echo "Please answer y/yes or n/no."
    ;;
  esac
done

# Verify the Clojure CLI version:
echo "Clojure CLI Path: $(which clojure)"
echo "Clojure CLI version: $(clojure --version)"
echo "# ---------------------------------------"
echo
