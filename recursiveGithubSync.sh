#! /bin/bash

directory=$(cd "$1" || "."; pwd)

for file in "$directory"/*; do
  if [ -d "$file" ] && [ -d "$file"/.git ]; then
    echo "Processing $file"
    cd "$file" || return
    gh repo sync
  fi
done
