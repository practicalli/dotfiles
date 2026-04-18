#!/usr/bin/env bash

echo
echo "# ---------------------------------------"
echo "ATAC - API Client"
dra download --automatic --install --output ~/.local/bin/ Julien-cpsn/ATAC

echo
echo "ATAC version: $(atac --version)"
echo "# ---------------------------------------"
echo
