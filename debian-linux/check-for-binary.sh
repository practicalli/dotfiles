#!/usr/bin/env bash

# Check binary exists - POSIX
if command -v $1 > /dev/null 2>&1; then
    echo $1 binary install
fi
