#!/usr/bin/env bash

# -----------------------------------------------
# Practicalli Configuration for development environment

# NOTE: Run after `./dev-tools-install.sh` has installed `git`
# Requires Practicalli SSH keys in ~/.ssh/

echo
echo "# ---------------------------------------"
echo "Clone Practicalli Books"
echo

echo "Ensure Practicalli Books directory exists"
mkdir -p "$HOME"/projects/practicalli/books
echo

# Install additional Debian packages

# Practicalli GitHub repository names for each book
books="books.list"

while read -r bookname; do

  if [ ! -d "$HOME"/projects/practicalli/books/"$bookname" ]; then
    echo "Cloning Practicalli " "$bookname"
    git clone --depth=1 git@github.com:practicalli/"$bookname" ~/projects/practicalli/books/"$bookname"
    echo
  else
    echo "Practicalli $bookname already installed"
    echo
  fi
done <"$books"

echo
echo "Clone Practicalli Websites"
websites="websites.list"

while read -r website; do

  if [ ! -d "$HOME"/projects/practicalli/"$website" ]; then
    echo "Cloning Practicalli " "$website"
    git clone --depth=1 git@github.com:practicalli/"$website" ~/projects/practicalli/"$website"
    echo
  else
    echo "Practicalli $website already installed"
    echo
  fi
done <"$websites"
echo

echo
echo "Clone Practicalli Projects"
projects="code-project.list"

echo "Ensure Practicalli Code directory exists"
mkdir -p "$HOME"/projects/practicalli/code
echo

while read -r project; do

  if [ ! -d "$HOME"/projects/practicalli/code/"$project" ]; then
    echo "Cloning Practicalli " "$project"
    git clone --depth=1 git@github.com:practicalli/"$project" ~/projects/practicalli/code/"$project"
    echo
  else
    echo "Practicalli $project already installed"
    echo
  fi
done <"$projects"
echo
echo "# ---------------------------------------"
echo
