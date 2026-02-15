#!/usr/bin/env bash

# Entertainment
# Tools for managing and playing audio video files and streams



# yt-dlp recommends the yt-dlp binary for Linux/BSD
#
# DRA automatic option fails as naming convention for release
# does not match system name
echo "# ---------------------------------------"
echo "Install YouTube download tool"
dra download --select yt-dlp --install --output /usr/local/bin/ yt-dlp/yt-dlp
echo "# ---------------------------------------"

echo ""

# https://github.com/nick42d/youtui - NO BINARY RELEASE (clone and make)
# echo "# ---------------------------------------
# echo "Shell Beats TUI - YouTube Music player / download"
# dra download --automatic --install --output /usr/local/bin/ nick42d/youtui
# echo "# ---------------------------------------

# echo ""
# https://shellbeats.com/ - NO RELEASE (clone and make)
# echo "# ---------------------------------------
# echo "Shell Beats TUI - YouTube Music player / download"
# dra download --automatic --install --output /usr/local/bin/ lalo-space/shellbeats
# echo "# ---------------------------------------
#
# echo ""
