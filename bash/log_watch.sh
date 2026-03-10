#!/bin/bash
LOG_FILE="/var/log/syslog"
if [ ! -f "$LOG_FILE" ]; then
  LOG_FILE="/var/log/messages"
fi

echo "Mostrando ultimas lineas de $LOG_FILE"
if [ -f "$LOG_FILE" ]; then
  tail -n 10 "$LOG_FILE"
else
  echo "No se encontro un log compatible."
fi
