#!/usr/bin/env bash

# rust-size <binary>

set -euo pipefail
BIN="${1:?Usage: rust-size <binary>}"
echo "=== File size ==="
du -sh "$BIN"
echo ""
echo "=== Section sizes ==="
size "$BIN"
echo ""
echo "=== Top symbols by size ==="
nm --size-sort --radix=d "$BIN" 2>/dev/null | tail -20 | awk '{printf "%8d  %s\n", $1, $3}'
