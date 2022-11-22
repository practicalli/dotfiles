#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Set XDG_CONFIG_HOME for clean management of configuration files
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:=$HOME/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:=$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:=$HOME/.local/state}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:=$HOME/.cache}"
export ZDOTDIR="${ZDOTDIR:=$XDG_CONFIG_HOME/zsh}"


# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi


## Nodejs local install
## unsure if an else branch is needed here...
if [[ -d $HOME/.apps/nodejs/current ]]; then
  path=($HOME/.apps/nodejs/current/bin(/N) $path)
else
  path=($path)
fi

# Zulip events - command line authentication
# https://gitlab.com/clojurians-zulip/feeds/-/blob/master/README.md#announce-an-event
export ZULIP_AUTH='****@************:********************************'
