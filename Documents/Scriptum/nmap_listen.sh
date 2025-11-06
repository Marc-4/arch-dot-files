#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <IP_ADDRESS/CIDR>"
  exit 1
fi

TARGET=$1
PREVIOUS_OUTPUT=""

while true; do
  CURRENT_OUTPUT=$(nmap -sn $TARGET 2>&1 | grep -Eo 'Nmap scan report for [^ ]+' | awk '{print $5}')
  HOST_COUNT=$(echo "$CURRENT_OUTPUT" | wc -l)
    
  if [[ "$CURRENT_OUTPUT" != "$PREVIOUS_OUTPUT" ]]; then
    echo "$HOST_COUNT hosts detected. IP addresses:"
    echo "$CURRENT_OUTPUT"
    PREVIOUS_OUTPUT="$CURRENT_OUTPUT"
  fi

  sleep 3
done
