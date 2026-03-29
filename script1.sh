#!/bin/bash
# Script 1: System Identity Report
# Author: Ayush Sharma | Reg No: 24BCE10595

# --- Variables ---
STUDENT_NAME="Ayush Sharma"
SOFTWARE_CHOICE="Git"

# --- System Info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d | cut -f2)

# --- Display ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "User            : $USER_NAME"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo "License         : GPL (Linux OS)"
