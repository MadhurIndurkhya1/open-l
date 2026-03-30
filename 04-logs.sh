#!/bin/bash
# Author: Madhur Indurkhya (24BAI10547)
# Suggested log path for Apache: /var/log/apache2/access.log

echo "================================================================================"
echo "                   Apache AUDIT - LOG FILE ANALYZER                 "
echo "================================================================================"
LOG_FILE="$1"
KEYWORD="$2"
COUNT=0
LAST_MATCHES=()

tail -n 100 $LOG_FILE | while read line; do
  if echo "$line" | grep -q "$KEYWORD"; then
    ((COUNT++))
    LAST_MATCHES+=("$line")
  fi
done

echo "Found $COUNT occurrences of '$KEYWORD' in the last 100 lines of $LOG_FILE"

echo "Last 5 matches:"
for ((i=${#LAST_MATCHES[@]}-1; i>=${#LAST_MATCHES[@]}-5; i--)); do
  echo "${LAST_MATCHES[i]}"
done

echo "================================================================================"