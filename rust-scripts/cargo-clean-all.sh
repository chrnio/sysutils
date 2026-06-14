#!/usr/bin/env bash
# clean all Cargo target dirs under a root

set -euo pipefail
ROOT="${1:-.}"
find "$ROOT" -name "Cargo.toml" -not -path "*/target/*" | while read -r manifest; do
    dir="$(dirname "$manifest")"
    if [[ -d "$dir/target" ]]; then
        echo "Cleaning $dir"
        cargo clean --manifest-path "$manifest"
    fi
done
