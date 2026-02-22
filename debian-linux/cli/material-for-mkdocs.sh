#!/usr/bin/env bash

# -----------------------------------------------
# Python packages as tools (uv)
# run as user (not root)

if [ "$(whoami)" = "root" ]
then
 echo "Run the uv tool install script with a user account. Do not run as root or via sudo"
 exit
fi

echo "# ---------------------------------------"
echo "Install Material for MkDocs as tool with supporting plugins"
uv tool install --with mkdocs-material --with mkdocs-callouts --with mkdocs-glightbox --with mkdocs-git-revision-date-localized-plugin --with mkdocs-redirects --with mkdocs-rss-plugin --with pillow --with cairosvg mkdocs
echo "# ---------------------------------------"

echo ""
