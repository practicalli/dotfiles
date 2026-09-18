# practicalli/dotfiles Changelog

All notable changes to this project will be documented in this file.
The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)

* **Added** for new features
* **Changed** for changes in existing functionality
* **Deprecated** for soon-to-be removed features
* **Resolved** resolved issue
* **Security** vulnerability related change

## [Unreleased]

### Added

- build(zensical): 🔧 add common practicalli social links to footer


## 🔖 2026-10-02

### Added
- docs(intro): 📝 start content for practicalli dotfiles
- fix(debian-linux): 🔧 update firefox debian package ppa script
- ci(github): 🔧 practicalli ci workflows for zensical book
- build(make): 🔧 practicalli tasks for zensical and clojure sites
- git: ssh key signing
- shell: aliases for editing shell history with fd
- git: aliases for git clone `git clone p:repo-name`
- zsh: neovim config selector functions
- make: `git-sr` and `git-status` to check status of all repositories
- os: hyprland configuration files
- kitty: example transparent_background options for linux
- make: mkdocs and python virtual environment tasks
- git: example diff and merg config for meld
- bin: xrandr command to set external monitor
- git: example global ignore patterns inclusive
- git: includeif hasconfig conditional config inclusion examples
- git: pre-commit hooks examples
- ssh: example config with multiple keys & remote repl pem
- dev: stale issue & pr scheduled check (monthly)
- dev: `mkdocs-debug` make task for verbose output to debug issues
- cli: starship.rs cross-shell prompt with customised Catppuccin Mocka theme
- zsh: launch starship.rs shell prompt
- cli: sharship.rs cross-shell prompt with customised Catppuccin Mocka theme
- hypr: add example key mappings
- garuda: default hyprland configuration
- garuda: dual monitor configuration for hyprland
- dev: `dependencies-update` & `dependencies-outdated` make tasks
- feat(debian): 🔧 preferred packages install and purge script
- feat(debian): 🔧 1 day system log rotation
- feat(debian): 🔧 1password install via package manager
- feat(debian): 🔧 install latest software development tool binaries
- feat(debian): 🔧 optional version argument to nodejs install script
- feat(debian): 🔧 separate package install and purge scripts
- feat(debian): 🔧 btop install script via DRA
- build(make): 🔧 zensical tasks via uv and tool install
- feat(debian): 🔧 add maximum mkdocs version to install script
- feat(debian): 🔧 cljstyle install script via DRA, include in dev-tools script
- build(make): 🔧 add git pull rebase for main branch, update git-sr task
- feat(debian): 🔧 create tui directory and move otree config
- feat(starship): 🔧 add icon replacements for practicalli project directories
- ci(github): 🔧 prevent jekyll process running after CI build
- build(marksman): 🔧 set docs as root for all links in project
- feat(debian): 🔨 install script for whalebird mastodon desktop client
- docs(terminal): 📝 overview of kitty terminal and practicalli customisations
- docs(shell): ✏️ update prezto and starship info

### Changed
- feat(debian): 🔧 update command to install zsh debian package
- feat(terminal): 🔧 set kitty font to 20 points by default
- feat(shell): 🔧 update neovide alias to latest practicalli/nvim-astro config
- ci(zensical): update uv to 10.2.0
- ci(megalinter): 🔧 update to custom zensical flavor
- ci(zensical): 🔧 zensical build from uv install
- git: restructure multiple configs, using relative include file paths
- dev: checkout action version 4 in backstage-validator workflow
- dev: upload-artifact action version 4 in megalinter workflow
- dev: disable REPOSITORY_TRIVY - failing on healthcheck in Dockerfile (healthcheck in compose.yaml)
- dev: backsage-entity-validator updated to v0.5.0
- dev: update Makefile with all targets used for Practicalli
- dev: upgrade to megalinter version 8
- kitty: nerdfonts bundled, symbol config redundant
- zsh: prezto config format for readability
- dev: updated GitHub action versions
- feat(debian): ⚙️ install zensical with catppuccin theme

| :file                                          | :name              | :current | :latest |
|------------------------------------------------|------------------- |----------|---------|
| .github/workflows/backstage-validator.yaml     | actions/checkout   | v4       | v7      |
| .github/workflows/changelog-check.yaml         | actions/checkout   | v4       | v7      |
| .github/workflows/mega-linter.yml              | actions/checkout   | v4       | v7      |
|                                                | actions/megalinter | v9       | v0.10.1 |
| .github/workflows/scheduled-version-check.yaml | actions/checkout   | v4       | v7      |


## 2023-09-28
### Added
- add changelog
