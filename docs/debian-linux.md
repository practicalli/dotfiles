---
icon: fontawesome/brands/debian
---


# Debian Linux

Scripts to customise the Debian Linux experience once an initial install has completed.

Preferred Debian packages are install and unneeded package removed.

Where the latest version of software is not available in the Debian Archive, the latest binary is installed from a Debian Personal Package Archive or a GitHub release.


## Package Updates

`debian-linux-post-install.sh` script will add all the packages listed in `debian-linux-post-install-package-add.list` and purge all packages listed in `debian-linux-post-install-packages-purge.list`

At the end of the script:

- downloaded packages are removed (autoclean) from the local storage
- packages no longer required are removed (autoremove)


## Software Development

`dev-setup.sh` script installs apps and command line tools to support software development tools which are not part of the Debian Linux repository (or are not available in the most recent version)

Where possible, [Download Release Artifacts (DRA)](https://github.com/devmatteini/dra){target=_blank} tool is used to download and install the latest version of a tool from its GitHub repository release.
