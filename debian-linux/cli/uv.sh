#!/usr/bin/env bash

echo "# ---------------------------------------"
echo "UV python package manager"
dra download --automatic --install --output ~/.local/bin/ astral-sh/uv

echo
echo "Uv version: $(uv --version)"
echo "# ---------------------------------------"
echo
