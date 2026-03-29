#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Ayush Sharma | Reg No: 24BCE10595

# --- Directories ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# --- Loop Through Directories ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# --- Check Git Config Directory ---
if [ -d "/etc/git" ]; then
    echo "Git config directory exists."
    ls -ld /etc/git
else
    echo "Git config directory not found."
fi
