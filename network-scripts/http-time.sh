#!/usr/bin/env bash

# measure every phase of an http-request.
URL="${1:?provide a URL}"
curl -w "\n\
dns:     %{time_namelookup}s\n\
connect: %{time_connect}s\n\
tls:     %{time_appconnect}s\n\
ttfb:    %{time_starttransfer}s\n\
total:   %{time_total}s\n\
size:    %{size_download} bytes\n" \
-o /dev/null -s "$URL"
