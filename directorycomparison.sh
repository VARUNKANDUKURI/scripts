#!/bin/bash

dir1="/home/ubuntu/node_exporter-1.6.1.linux-amd64"
dir2="/home/ubuntu/prometheus-2.44.0.linux-amd64"

diff_output=$(diff -rq "$dir1" "$dir2")

if [ -z "$diff_output" ]; then
    echo "Directories are identical."
else
    echo "Differences found:"
    echo "$diff_output"
fi
