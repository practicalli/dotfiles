# Configuration files for common tools

Configuration files for tools such as Git, Clojure development tools.

* git - identity, configuration and custom commands
* aws - config with profiles and single sign-on with okta


## Install

Practicalli follows the FreeDesktop.org XDG basedir specification for configuration files, with `$XDG_CONFIG_HOME` set to `$HOME/.config`. So this repository can be extracted directly to `$XDG_CONFIG_HOME`

```
git clone https://github.com/practicalli/dotfiles.git $XDG_CONFIG_HOME
```

Otherwise clone this repository and copy the configuration directories or specific examples as required.


## Tool specific repositories

Larger configurations are separated into their own repositories

* [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d/) - Clojure & LSP focused configuration for Spacemacs
* [practicalli/neovim-config](https://github.com/practicalli/neovim-config) - Clojure, Conjure & LSP configuration with Fennel and Lua configuration