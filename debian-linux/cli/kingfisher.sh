#!/usr/bin/env bash

echo
echo "# ---------------------------------------"
echo "Kingfisher - secret scanner and live secret validation tool"
dra download --automatic --install --output ~/.local/bin/ mongodb/kingfisher

echo
echo "Kingfisher version: $(kingfisher --version)"
echo "# ---------------------------------------"
echo
