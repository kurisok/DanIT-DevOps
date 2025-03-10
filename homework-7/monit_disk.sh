#!/bin/bash

THRESHOLD=80  # Задайте необхідний відсоток
USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "$(date) WARNING: Disk usage exceeded $THRESHOLD%. Current usage: $USAGE%" >> /var/log/disk.log
fi