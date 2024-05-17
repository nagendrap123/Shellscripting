#!/bin/bash

# Example using printf to format system information

# Get system information
hostname=$(hostname)
kernel_version=$(uname -r)
cpu_model=$(grep "model name" /proc/cpuinfo | uniq | cut -d ":" -f 2 | sed 's/^[ \t]*//')
memory=$(free -m | awk '/Mem/{print $2}')
disk_usage=$(df -h / | awk 'NR==2{print $3}')
uptime=$(uptime -p)

# Print formatted system information
printf "System Information\n"
printf "------------------\n"
printf "Hostname: %s\n" "$hostname"
printf "Kernel Version: %s\n" "$kernel_version"
printf "CPU Model: %s\n" "$cpu_model"
printf "Memory: %s MB\n" "$memory"
printf "Disk Usage: %s\n" "$disk_usage"
printf "Uptime: %s\n" "$uptime"
