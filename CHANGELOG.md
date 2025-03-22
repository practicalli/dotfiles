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

### Changed
- git: restructure multiple configs, using relative include file paths
- dev: checkout action version 4 in backstage-validator workflow
- dev: upload-artifact action version 4 in megalinter workflow
- dev: disable REPOSITORY_TRIVY - failing on healthcheck in Dockerfile (healthcheck in compose.yaml)
- dev: backsage-entity-validator updated to v0.5.0
- dev: update Makefile with all targets used for Practicalli
- dev: upgrade to megalinter version 8

## 2023-09-28
### Added
- add changelog
