#!/bin/bash
# Nama  : Ara Afidah Alifiya
# NIM   : 09011382530166
# Kelas : SKU3B

INTERVAL="${INTERVAL:-60}"
SCRIPT_DIR="$(dirname "$0")"

while true; do
    "$SCRIPT_DIR/backup.sh"
    sleep "$INTERVAL"
done
