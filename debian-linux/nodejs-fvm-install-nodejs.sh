#!/usr/bin/env bash

# NOTE: run this script after setting up preferred shell, e.g. zsh
# as the NVM script adds itself to the shell resource configuration

echo "# ---------------------------------------"
echo "Nodejs install via Node Version Manager - FNM"

# Download and install fnm:
# https://github.com/Schniz/fnm
curl -o- https://fnm.vercel.app/install | bash

# prevent duplication in your shell config file, pass --skip-shell to the install command:
# curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell

# Define location of FNM
if [ -d $XDG_CONFIG_HOME/fnm ]; then
 echo "Source FNM script from XDG_CONFIG_HOME/fnm"
 FNM_PATH="$XDG_CONFIG_HOME/fnm"
else
 echo "Source NVM script from HOME/.local/share/fnm"
 FNM_PATH="$HOME/.local/share/fnm"
fi

# Source the FNM script
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

# Download and install Node.js:
fnm install 24

# Verify the Node.js version:
node -v # Should print "v24.13.1".

# Verify npm version:
npm -v # Should print "11.8.0".
echo "# ---------------------------------------"
