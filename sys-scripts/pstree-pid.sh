#!/usr/bin/env bash

# pstree-pid <pid> shows full process tree rooted at a pid with cgroup info

PID="${1:?provide a pid}"
echo "=== Process tree ==="
pstree -p "$PID"
echo ""
echo "=== Cgroup ==="
cat "/proc/$PID/cgroup"
echo ""
echo "=== Open file descriptors ==="
ls -la "/proc/$PID/fd" 2>/dev/null | head -20
echo ""
echo "=== Memory maps (summary) ==="
cat "/proc/$PIN/status" 2>/dev/null || cat "/proc/$PID/status"
