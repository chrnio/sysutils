#!/usr/bin/env bash

# list and remove (optional) orphaned packages
orphans=$(pacman -Qdtq)
if [[ -z "$orphans" ]]; then
    echo "no orphans"
    exit 0
fi
echo "$orphans"
echo ""
read -rp "Remove all? [y/N] " ans
[[ "$ans" =~ ^[Yy]$ ]] && sudo pacman -Rns $orphans
