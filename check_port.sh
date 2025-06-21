#!/bin/bash

HOST=${1:-127.0.0.1}
PORT=${2:-80}
LOGFILE="port_check.log"

nc -z -w2 "$HOST" "$PORT" 2>/dev/null

if [ $? -ne 0 ]; then
  echo "$(date '+%Y-%m-%d %H:%M:%S') $HOST:$PORT недоступен" >> "$LOGFILE"
else
  echo "$(date '+%Y-%m-%d %H:%M:%S') $HOST:$PORT доступен"
fi
