#!/usr/bin/env bash

# delete all local branches that have been merged into main
BASE="${1:-main}"
git branch --merged "$BASE" | grep -v "^\*" | grep -v "$BASE" | xargs -r git branch -d
