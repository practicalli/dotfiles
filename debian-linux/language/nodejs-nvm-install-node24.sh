#!/usr/bin/env bash

# INFO: Practicalli uses FVM to install Node.js

# NOTE: run this script after setting up preferred shell, e.g. zsh
# and XDG environment variables are defined
# as the NVM script adds itself to the shell resource configuration

echo "# ---------------------------------------"
echo "Nodejs install via Node Version Manager - NVM"

# Nodejs official install script for vm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# Source the NVM script
if [ -d "$XDG_CONFIG_HOME"/nvm ]; then
 echo "Source NVM script from XDG_CONFIG_HOME/nvim"
 source "$XDG_CONFIG_HOME/nvm/nvm.sh"
else
 echo "Source NVM script from HOME/.nvim"
 source "$HOME/.nvm/nvm.sh"
fi

# Install the given version of nodejs
nvm install 24


# Verify the Node.js version:
echo "Node.js version: $(node -v)"

# Verify npm version:
echo "NPM version: $(npm -v)"
echo "# ---------------------------------------"
