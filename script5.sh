#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Ayush Sharma | Reg No: 24BCE10595

echo "Answer three questions to generate your manifesto."
echo ""

# --- User Input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Variables ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Create Manifesto ---
echo "Open Source Manifesto" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I use $TOOL every day." >> $OUTPUT
echo "For me, freedom means $FREEDOM." >> $OUTPUT
echo "I believe in sharing knowledge openly." >> $OUTPUT
echo "In the future, I will build $BUILD and share it freely." >> $OUTPUT

# --- Output ---
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
