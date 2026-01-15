#!/usr/bin/env bash

# Configure the Debian Linux system for optimum usage
# - minimise logs


# Rotate system logs now
journalctl --rotate

# Remove system log files after 1 day
journalctl --vacuum-time=1d
