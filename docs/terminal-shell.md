---
icon: lucide/terminal
---

# Terminal Shell - Zsh & Starship

An advanced shell environment with powerful tools for the command line.

[Prezto](https://github.com/sorin-ionescu/prezto) is the base configuration for Zsh, an efficient configuration that saves a huge amount of time.

!!! INFO "Presto uncertain future"
    Although Prezto remains an excellent Zsh configuration, due to the original maintainer disengaging with the project the future remains unclear. Several maintainers were added, so regular updates do continue.

!!! INFO "Review of Community configurations"
    Practicalli uses [Oh-My-Zsh configuration](https://github.com/ohmyzsh/ohmyzsh/){target=_blank} on Termux (Android terminal app).

    [ZIM](https://aur.archlinux.org/packages/zsh-zim-git/){target=_blank} configuration framework claims blazing speed and a rich set of features (modules)


## Starship

A modern command prompt theme, giving feedback about git status and many other aspects of the shell environment (java or python version, etc.)

Practicalli `starship.toml` configuration defines a colour scheme, directory short-cuts and programming language environment detection.

![Starship terminal shell prompt with Practicalli customisation](https://github.com/practicalli/graphic-design/blob/live/os/terminal/shell-prompt-starship-practicalli-examples.png?raw=true
)url#only-dark#){loading=lazy}


> Powerline 10K was previously used, although starship feels nicer to use in general.


!!! INFO "Oh My Posh cross platform prompt theme"
    [Oh My Posh](https://github.com/JanDeDobbeleer/oh-my-posh){target=_blank} is claimed to be a fast and customisable prompt engine for any shell.

## Shell Aliases

Common aliases for use with Bash and Zsh shells

- `astro`, `lazyvim` Neovim NVIM_APPNAME Configuration aliases
