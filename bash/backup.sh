#!/bin/bash
set -e

WORKDIR="$(pwd)/backup_lab"
mkdir -p "$WORKDIR"

echo "Creando respaldo de ejemplo"
tar -czf "$WORKDIR/sample_backup.tar.gz" /etc/hosts /etc/os-release 2>/dev/null || true

echo "Backup generado en $WORKDIR/sample_backup.tar.gz"
