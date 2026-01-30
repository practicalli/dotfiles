#!/usr/bin/env bash

# Packages to reinstall should there be an issue (rare)

add="packages-reinstall-list"

while read -r line
do
  echo

  echo "# ---------------------------------------"
  echo Reinstall package "$line"
  apt-get install --reinstall "$line"
  echo "# ---------------------------------------"
done < "$add"

echo ""
echo ""
