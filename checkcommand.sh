#!/bin/bash

if ! ls /home/ubuntu; then
    echo "Command failed: Directory does not exist."
    exit 1
fi

echo "Command succeeded: Directory exists."
