#!/bin/bash
echo "name,age" | awk -F',' '{print $1}'
