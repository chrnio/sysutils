#!/usr/bin/env bash

# kill process on the specified port (makes life easier)
PORT="$1"

sudo fuser -k "${PORT}/tcp"
