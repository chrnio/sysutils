#!/usr/bin/env bash

# finds files that change frequently.
git log --name-only --format="" | grep -v '^$' | sort | uniq -c | sort -rn | head -20
