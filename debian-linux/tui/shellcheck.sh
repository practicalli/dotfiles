#!/usr/bin/env bash

echo
echo "# ---------------------------------------"
echo "Shellcheck - shell script static analysis tool"
# INFO: Debian Linux currently 0.10.0

dra download --automatic --install --output ~/.local/bin/ koalaman/shellcheck

echo
echo "Shellchekc version: $(shellcheck --version)"
echo "# ---------------------------------------"
echo
