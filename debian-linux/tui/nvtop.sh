#!/usr/bin/env bash

echo
echo "# ---------------------------------------"
echo "NVTop - monitor GPUs"
dra download --automatic --install --output ~/.local/bin/ Syllo/nvtop

echo
echo "NVTop version: $(nvtop --version)"
echo "# ---------------------------------------"
echo
