#!/bin/bash
# Script 4: Log File Analyzer
# Author: Ayush Sharma | Reg No: 24BCE10595

# --- Inputs ---
LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# --- Check File ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# --- Read File ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Output ---
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# --- Show Last 5 Matches ---
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
