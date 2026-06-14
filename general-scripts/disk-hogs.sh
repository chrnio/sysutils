#!/usr/bin/env bash

# finds the largest dir under a path
ROOT="${1:-.}"
du -h --max-depth=2 "$ROOT" 2>/dev/null | sort -rh | head -20
