#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Ayush Sharma | Reg No: 24BCE10595

# --- Variable ---
PACKAGE="git"

# --- Check Installation ---
if dpkg -l | grep -q "$PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -l | grep "$PACKAGE"
    git --version
else
    echo "$PACKAGE is NOT installed."
fi

# --- Case Statement ---
case $PACKAGE in
    git) echo "Git: Distributed version control system used worldwide." ;;
    apache2) echo "Apache: Popular open-source web server." ;;
    mysql) echo "MySQL: Open-source database system." ;;
    vlc) echo "VLC: Open-source media player." ;;
    *) echo "Unknown package." ;;
esac
