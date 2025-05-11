# Configuration files for common tools

Configuration files for tools such as Git, Clojure development tools.

* git - multiple identities select on path, command aliases, clone short-cuts, SSH signing & allowed signatures, inclusive ignore patterns and common configuration options
* aws - config with profiles and single sign-on with okta
* regolith2 - 13 tiling manager on Ubuntu linux distribution (tweaks)
* clojure - [cljstyle](https://github.com/greglook/cljstyle) formatting rules
* [kitty terminal](https://sw.kovidgoyal.net/kitty/) configuration - font, symbol mappings for nerdfonts, light and dark terminal colorschemes
* `shell-aliases` common aliases used by all shells (bash, zsh)
* [Starship](https://starship.rs/) cross-shell prompt config with a customised [Catppuccin Powerline theme](https://starship.rs/presets/catppuccin-powerline)


## Install

Practicalli follows the FreeDesktop.org XDG basedir specification for configuration files, with `$XDG_CONFIG_HOME` set to `$HOME/.config`.  Using this directory simplifies the versioning of configuration files, compared to using the root of a user account, i.e. `$HOME`.

> Learn more about [configuring the FreeDesktop.org XDG basedir standard for development tools](https://practical.li/blog/posts/adopt-FreeDesktop.org-XDG-standard-for-configuration-files/)

Clone this repository to `$XDG_CONFIG_HOME` to use the configuration straight away.  

```shell
git clone https://github.com/practicalli/dotfiles.git $XDG_CONFIG_HOME
```

Or clone the repository to a project directory and add operating system symlinks from the `$XDG_CONFIG_HOME`, `$HOME/.config` or `$HOME`.  

To use this configuration as a base for your own repository, fork this repository and copy the configuration directories or specific examples as required.


## Specific tool repositories

Tools with a larger configuration have been separated into their own repositories for convenience.

* [practicalli/clojure-lsp-config](https://github.com/practicalli/clojure-lsp-config) - Clojure LSP and cljfmt configuration
* [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d/) - Clojure & LSP focused configuration for Spacemacs
* [practicalli/astronvim-config](https://github.com/practicalli/astronvim-config) Clojure development with Neovim with AstroNvim
