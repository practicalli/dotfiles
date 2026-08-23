---
icon: lucide/wrench
---

# Practicalli dotfile configurations

Configuration files for shells, command line tools and software development environments


* Debian Linux - post install, TUI & dev tool scripts
* Git client - multiple identities select on path, command aliases, clone short-cuts, SSH signing & allowed signatures
* [kitty terminal](https://sw.kovidgoyal.net/kitty/) configuration - font, symbol mappings for nerdfonts, light and dark terminal colorschemes
* `shell-aliases` common aliases used by all shells (bash, zsh)
* [Starship](https://starship.rs/) cross-shell prompt config with a customised [Catppuccin Powerline theme](https://starship.rs/presets/catppuccin-powerline)
* Zsh - Practicalli configuration based on [Prezto community config](https://github.com/sorin-ionescu/prezto)
* aws - config with profiles and single sign-on with okta
* regolith-desktop - i3 tiling manager on Ubuntu linux distribution (tweaks)
* clojure - [cljstyle](https://github.com/greglook/cljstyle) formatting rules


## Install

Clone this project.

Create symbolic links in the `~/.config/` directory for each file or directory you wish to use.  Or copy useful parts into your own configuration files.

 The [install-configs.sh](https://github.com/practicalli/dotfiles/blob/main/debian-linux/practicalli/install-configs.sh) bash script in the [Practicalli dotfiles repository](https://github.com/practicalli/dotfiles/tree/main/debian-linux) to download the Practicalli dotfiles repository and link Practicalli configs in `~/.config/`.

Practicalli follows the FreeDesktop.org XDG basedir specification for configuration files, with `$XDG_CONFIG_HOME` set to `$HOME/.config`.

> NOTE: Using `$HOME/.config` simplifies versioning of configuration files compared to using the root of a user account, i.e. `$HOME`.

> Learn more about [configuring the FreeDesktop.org XDG basedir standard for development tools](https://practical.li/blog/freedesktoporg-xdg-standard-for-clojure-development-tools/)


## Other tool configurations

Tools with a larger configuration have been separated into their own repositories for convenience.

[Clojure LSP and cljfmt configuration](https://github.com/practicalli/clojure-lsp-config){target=_blank .md-button}

[Neovim configuration for Clojure development with LSP & Treesitter](https://github.com/practicalli/onvim-astro){target=_blank .md-button}
[Spacemacs (Emacs) configuration with Clojure & LSP focus](https://github.com/practicalli/spacemacs.d/){target=_blank .md-button}
