#!/usr/bin/env bash

echo "# ---------------------------------------"
echo "Shellcheck - shell script static analysis tool - installed in " $installpath
# INFO: Debian Linux currently 0.10.0

dra download --automatic --install --output ~/.local/bin/ koalaman/shellcheck
echo "# ---------------------------------------"

echo ""
