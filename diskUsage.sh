#!/bin/bash

threshold=10
email="varunkmv10@gmail.com"

disk_usage=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$disk_usage" -gt "$threshold" ]; then
    echo "Disk usage is above $threshold%. Current usage: $disk_usage%" | mail -s "Disk Usage Alert" "$email"
else
    echo "Disk usage is under control. Current usage: $disk_usage%"
fi
