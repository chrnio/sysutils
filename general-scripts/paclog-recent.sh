#!/usr/bin/env bash

# shows recent package installed / upgraded on arch linux
DAYS="${1:-7}"
grep -E "installed|upgraded|removed" /var/log/pacman.log \
    | awk -v cutoff="$(date -d "$DAYS days ago" +%Y-%m-%d)" '$1 >= "["cutoff"]"' \
    | tail -50
