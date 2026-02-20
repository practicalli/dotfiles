#!/usr/bin/env bash

# NOTE: run this script after setting up preferred shell, e.g. zsh
# and XDG environment variables are defined
# as the NVM script adds itself to the shell resource configuration

echo "# ---------------------------------------"
echo "Nodejs install via Node Version Manager - NVM"

# Nodejs official install script for vm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# Source the NVM script
\. "$HOME/.nvm/nvm.sh"

# Install the given version of nodejs
nvm install 24

# Confirm node was installed
node --version
echo "# ---------------------------------------"
