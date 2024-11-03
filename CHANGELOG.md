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

### Changed
- git: restructure multiple configs, using relative include file paths
- dev: checkout action version 4 in backstage-validator workflow
- dev: upload-artifact action version 4 in megalinter workflow
- dev: disable REPOSITORY_TRIVY - failing on healthcheck in Dockerfile (healthcheck in compose.yaml)
- dev: backsage-entity-validator updated to v0.5.0


## 2023-09-28
### Added
- add changelog
