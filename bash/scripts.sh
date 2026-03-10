#!/bin/bash
# Script maestro para el toolkit DevOps.

set -e

echo "Ejecutando server_monitor.sh"
bash "$(dirname "$0")/server_monitor.sh"

echo ""
echo "Ejecutando backup.sh"
bash "$(dirname "$0")/backup.sh"

echo ""
echo "Ejecutando log_watch.sh"
bash "$(dirname "$0")/log_watch.sh"
