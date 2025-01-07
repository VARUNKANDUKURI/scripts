#!/bin/bash

max_retries=5
retry_interval=10
retry_count=0

while ! ping -c 1 google.com; do
    ((retry_count++))
    if [ "$retry_count" -ge "$max_retries" ]; then
        echo "Command failed after $max_retries attempts."
        exit 1
    fi
    echo "Retrying in $retry_interval seconds... ($retry_count/$max_retries)"
    sleep "$retry_interval"
done

echo "Command succeeded!"
