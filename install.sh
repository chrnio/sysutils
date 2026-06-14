#!/usr/bin/env bash

set -euo pipefail

mkdir -p bin

find . \
  -type f \
  -name "*.sh" \
  ! -path "./bin/*" \
  | while read -r file; do
      ln -sf "$(realpath "$file")" \
             "bin/$(basename "$file" .sh)"
    done

echo "Symlinks generated in ./bin"
