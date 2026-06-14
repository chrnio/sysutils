#!/usr/bin/env bash

# syscall-trace <command> <arguments>

set -euo pipefail
strace -c -f -- "$@" 2>&1
