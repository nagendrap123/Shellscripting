#!/bin/bash

# Example using printf to format disk usage information

# Get disk usage information
disk_usage=$(df -h /dev/sda1 | awk 'NR==2{print $2, $3, $4}')

# Print formatted disk usage information
printf "Disk Usage: %-10s %-10s %-10s\n" "Total" "Used" "Available"
printf "%-10s %-10s %-10s\n" $disk_usage
