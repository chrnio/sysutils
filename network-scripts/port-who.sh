#!/usr/bin/env bash

# finds what is listening to a port
PORT="${1:?provide a port}"
ss -tlnp | grep ":$PORT " || echo "nothing on $PORT"
