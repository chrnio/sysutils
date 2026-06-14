#!/usr/bin/env bash

set -euo pipefail
for pid in /proc/[0-9]*/fd; do
    count=$(ls "$pid" 2>/dev/null | wc -l)
    if (( count > 100 )); then
        ppid="${pid%/fd}"
        name=$(cat "${ppid}/comm" 2>/dev/null || echo "?")
        echo "$count  $name  (${ppid##*/proc/})"
    fi
done | sort -rn | head -20
