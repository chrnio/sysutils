#!/usr/bin/env bash

# finds memory consumers
echo "=== Top RSS consumers ==="
ps aux --sort=-%mem | awk 'NR<=15{printf "%-30s %6s %6s\n", $11, $4, $6}' | column -t
echo ""
echo "=== Available memory ==="
free -h
echo ""
echo "=== Swap usage ==="
swapon --show 2>/dev/null || echo "no swap"
