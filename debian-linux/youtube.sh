#!/usr/bin/env bash

# yt-dlp recommends the yt-dlp binary for Linux/BSD
#
# DRA automatic option fails as naming convention for release
# does not match system name


echo "# ---------------------------------------"
echo "Install YouTube download tool
dra download --select yt-dlp --install --output /usr/local/bin/ yt-dlp/yt-dlp
echo "# ---------------------------------------"

echo ""
