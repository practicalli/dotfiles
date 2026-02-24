#!/usr/bin/env bash

# INFO: basic form of checking if a command exists
# Not currently used in any scripts
# Kept for posterity

# Check binary exists - POSIX
if command -v "$1" > /dev/null 2>&1; then
    echo "$1" binary install
fi
