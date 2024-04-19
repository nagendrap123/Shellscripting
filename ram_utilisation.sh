#!/bin/bash

# This script uses the 'free -m' command to display RAM utilization
# and calculates the percentage of RAM used.

# Execute 'free -m' command and store the output in a variable
ram_info=$(free -m)

# Extract total, used, and free RAM values from the output using awk
total_ram=$(echo "$ram_info" | awk 'NR==2 {print $2}')
used_ram=$(echo "$ram_info" | awk 'NR==2 {print $3}')
free_ram=$(echo "$ram_info" | awk 'NR==2 {print $4}')

# Calculate used RAM by subtracting free RAM from total RAM
used_ram=$((total_ram - free_ram))

# Calculate percentage of RAM used
ram_utilization=$((used_ram * 100 / total_ram))

# Display RAM utilization
echo "Total RAM: $total_ram MB"
echo "Used RAM: $used_ram MB"
echo "Free RAM: $free_ram MB"
echo "RAM Utilization: $ram_utilization%"
