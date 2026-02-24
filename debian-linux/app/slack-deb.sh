#!/usr/bin/env bash

# INFO: Check latest version of Slack on:
# https://slack.com/intl/en-gb/downloads/linux
# Update curl command to latest version number

echo
echo "# ---------------------------------------"
echo "Slack Desktop app for community discussions"
echo "Installed via Debian Linux package system"
echo

echo "Download official Slack Debian Package"
curl "https://downloads.slack-edge.com/desktop-releases/linux/x64/4.47.69/slack-desktop-4.47.69-amd64.deb" --output /tmp/slack-latest.deb
echo

echo "Install Slack package"
sudo apt-get install /tmp/slack-latest.deb
echo

echo "Slack App now available via desktop launcher and command line:"
echo "Execution path: $(which slack)"
echo "Slack version: $(slack --version)"
echo "# ---------------------------------------"
echo
