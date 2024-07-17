#!/bin/bash

# Variables
THRESHOLD=80
ALERT_EMAIL="baluwadave@gmail.com"

# Check disk usage
DISK_USAGE=$(df -h / | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 }' | sed 's/%//g')

# Send alert if threshold is exceeded
if [ $DISK_USAGE -ge $THRESHOLD ]; then
  echo "Disk usage is at ${DISK_USAGE}% on $(hostname)" | mail -s "Disk Usage Alert" $ALERT_EMAIL
fi
