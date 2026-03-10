#!/bin/bash
echo "Uso de CPU"
if command -v top >/dev/null 2>&1; then
  top -bn1 | grep "Cpu"
else
  echo "top no disponible"
fi

echo "Memoria libre"
if command -v free >/dev/null 2>&1; then
  free -h
else
  echo "free no disponible"
fi

echo "Procesos activos"
ps aux | head -n 5
