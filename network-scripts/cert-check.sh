#!/usr/bin/env bash

# inspect TLS cert expiry and SANs.
HOST="${1:?provide a host}"
PORT="${2:-443}"
echo | openssl s_client -connect "${HOST}:${PORT}" -servername "$HOST" 2>/dev/null \
    | openssl x509 -noout -dates -subject -ext subjectAltName
