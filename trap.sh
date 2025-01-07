#!/bin/bash

# Trap SIGINT and execute a custom action
trap "echo 'Script interrupted! Cleaning up...'; exit 1" SIGINT

# Simulating a long-running process
echo "Press Ctrl+C to interrupt the script..."
for i in {1..10}; do
    echo "Processing $i"
    sleep 1
done

echo "Completed successfully!"
