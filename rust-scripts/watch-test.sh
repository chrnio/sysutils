#!/usr/bin/env bash

# rerun `cargo test` on file changes (cargo-watch alternative)
set -euo pipefail
FILTER="${1:-}"
inotifywait -r -m -e close_write --include '\.rs$' src/ 2>/dev/null | while read -r _; do
    clear
    if [[ -n "$FILTER" ]]; then
        cargo test "$FILTER" 2>&1 | tail -40
    else
        cargo test 2>&1 | tail -40
    fi
done
