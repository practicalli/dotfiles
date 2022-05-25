# Configuration files for common tools

Configuration files for tools such as Git, Clojure development tools.

* git - identity, configuration and custom commands
* aws - config with profiles and single sign-on with okta
* regolith - linux distribution based on Ubuntu and i3 tiling window manager (fonts, icons and theme tweaks)


## Install

Practicalli follows the FreeDesktop.org XDG basedir specification for configuration files, with `$XDG_CONFIG_HOME` set to `$HOME/.config`. So this repository can be extracted directly to `$XDG_CONFIG_HOME`

Learn more about [configuring the FreeDesktop.org XDG basedir standard for development tools](https://practical.li/blog/posts/adopt-FreeDesktop.org-XDG-standard-for-configuration-files/)

```
git clone https://github.com/practicalli/dotfiles.git $XDG_CONFIG_HOME
```

Otherwise clone this repository and copy the configuration directories or specific examples as required.


## Specific tool repositories

Tools with a larger configuration have been separated into their own repositories for convenience.

* [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d/) - Clojure & LSP focused configuration for Spacemacs
* [practicalli/neovim-config](https://github.com/practicalli/neovim-config) - Clojure, Conjure & LSP configuration with Fennel and Lua configuration
