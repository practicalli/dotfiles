# Debian Post install

Steps to customise the Debian Linux experience after the initial install.

Once Debian Linux (latest stable distribution) has been installed, install preferred packages and remove unwanted packages.

Add latest software development tools via GitHub releases.

Get Hacking !!


## Manual Settings

- add bluetooth trackball
- appearance: dark theme, preferred background image (image not showing in Sway)
- mouse: natural scrolling
- display: orientation for dual monitors
- add practicalli to sudo group (restart required)


## Debian packages

Run the `./debian-linux-post-install.sh` script for the Debian Linux packages preferred by Practicalli.

- Update Debian Linux package database
- Install all packages listed in `./debian-linux-post-install-packages-add.list`
- Remove all packages listed in `./debian-linux-post-install-packages-purge.list`
- Set kitty terminal as default (`update-alternatives`)
- Remove packages no longer required (`autopurge`)
- Clean the Debian Linux package cache (`autoremove`)

> NOTE: packages already installed or purged are skipped in the script.

> NOTE: `lightdm` replaces `gdm3` login manager as part of this script.


## Software Development binaries

Run the `./dev-tools-install.sh` script to install the latest versions of software development tools, programming languages, tui's and desktop apps used by Practicalli.

Alternatively, run the individual scripts for the specific tools you wish to install.


## TODO

- Clone practicalli/dotfiles
- Set practicalli/dotfiles/kitty as Kitty config
- Install Prezto
- Set `zsh` as the default shell (preferred TAB completions)
- Use practicalli/dotfiles/zsh as zsh config


### Regolith Desktop

> TODO: include in Debian Linux post install script

- add signing key
- add x11 and sway packages and preferred theme
