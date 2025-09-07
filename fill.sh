#!/usr/bin/bash

find . -mindepth 2 -type d \
  -not -path '*/.*' \
  -exec sh -c '
    for dir do
      [ ! -f "$dir/index.md" ] && touch "$dir/index.md" && echo "Created $dir/index.md"
    done
  ' sh {} +
