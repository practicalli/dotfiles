#!/usr/bin/env bash

# INFO: recommend HTTPie deb package install instead

echo
echo "# ---------------------------------------"
echo "GitHub CLI - manage GitHub Repositories"
dra download --automatic --install --output ~/.local/bin cli/cli
echo
echo "GitHub CLI version: $(gh --version)"
echo "# ---------------------------------------"
echo
