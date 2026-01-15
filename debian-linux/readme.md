# Debian Post install

Steps to customise the Debian Linux experience after the initial install.

Once Debian Linux (latest stable distribution) has been installed, install preferred packages and remove unwanted packages.

Add latest software development tools via GitHub releases.

## Manual Settings

- bluetooth trackball
- appearance: dark theme, preferred background image (image not showing in Sway)
- mouse: natural scrolling
- display: orientation for dual monitors
- add practicalli to sudo group (restart required)

## Debian packages

Run the `./debian-linux-post-install.sh` script for Practicalli preferences.

- Install all packages listed in `debian-linux-post-install-packages-add.list`
- Remove all packages listed in `./debian-linux-post-install-packages-purge.list`
- Remove packages no longer required (`autoremove`)
- Clean the Debian Linux package cache

> NOTE: packages already installed or purged are skipped in the script.

> NOTE: `ligthdm` replaces `gdm3` login manager as part of this script.


## Regolith

> TODO: include in post install script

- add signing key
- add x11 and sway packages and preferred theme



## Software Development binaries



## Shell

- Set kitty terminal as default
- Set practicalli/dotfiles kitty as config
- install Prezto
- use practicalli/dotfiles zsh as config
