#!/usr/bin/env bash

git ls-files | xargs -I{} git log --format="%an" -- {} | sort | uniq -c | sort -rn
