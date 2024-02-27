# Configuration files for common tools

Configuration files for tools such as Git, Clojure development tools.

* git - identity, configuration, SSH signing and custom commands
* aws - config with profiles and single sign-on with okta
* regolith2 - 13 tiling manager on Ubuntu linux distribution (tweaks)
* clojure - [cljstyle](https://github.com/greglook/cljstyle) formatting rules
* [kitty terminal](https://sw.kovidgoyal.net/kitty/) configuration - font, symbol mappings for nerdfonts, light and dark terminal colorschemes
* `shell-aliases` common aliases used by all shells (bash, zsh)


## Install

Practicalli follows the FreeDesktop.org XDG basedir specification for configuration files, with `$XDG_CONFIG_HOME` set to `$HOME/.config`. So this repository can be extracted directly to `$XDG_CONFIG_HOME`

Learn more about [configuring the FreeDesktop.org XDG basedir standard for development tools](https://practical.li/blog/posts/adopt-FreeDesktop.org-XDG-standard-for-configuration-files/)

```shell
git clone https://github.com/practicalli/dotfiles.git $XDG_CONFIG_HOME
```

Or fork this repository and copy the configuration directories or specific examples as required.


## Specific tool repositories

Tools with a larger configuration have been separated into their own repositories for convenience.

* [practicalli/clojure-lsp-config](https://github.com/practicalli/clojure-lsp-config) - Clojure LSP and cljfmt configuration
* [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d/) - Clojure & LSP focused configuration for Spacemacs
* [practicalli/astronvim-config](https://github.com/practicalli/astronvim-config)
* [practicalli/neovim-config](https://github.com/practicalli/neovim-config-redux) - DEPRECATED - Clojure, Conjure & LSP configuration with Fennel and Lua configuration
