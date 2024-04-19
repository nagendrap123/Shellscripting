#!/bin/bash

# This script monitors CPU utilization and takes actions based on the utilization level.

# Define the threshold levels for CPU utilization
high_threshold=80
medium_threshold=60

# Get current CPU utilization
cpu_utilization=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')

# Check CPU utilization and take appropriate actions
if (( $(echo "$cpu_utilization > $high_threshold" | bc -l) )); then
    echo "High CPU utilization detected ($cpu_utilization%). Taking action..."
    # Add your high CPU utilization action here
elif (( $(echo "$cpu_utilization > $medium_threshold" | bc -l) )); then
    echo "Medium CPU utilization detected ($cpu_utilization%). Taking action..."
    # Add your medium CPU utilization action here
else
    echo "CPU utilization within normal range ($cpu_utilization%). No action required."
fi
