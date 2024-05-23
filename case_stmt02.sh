#!/bin/bash

# Function to display system information
display_system_info() {
    echo "System Information:"
    echo "-------------------"
    uname -a
    echo ""
    lsb_release -a
}

# Function to display disk usage
display_disk_usage() {
    echo "Disk Usage:"
    echo "-----------"
    df -h
}

# Function to display current users
display_current_users() {
    echo "Current Users:"
    echo "--------------"
    who
}

# Check if the user provided any command-line arguments
if [ $# -eq 0 ]; then
    echo "Usage: $0 [info|disk|users]"
    exit 1
fi

# Extract the first argument
option=$1

# Use a case statement to determine the action
case $option in
    info)
        display_system_info
        ;;
    disk)
        display_disk_usage
        ;;
    users)
        display_current_users
        ;;
    *)
        echo "Invalid option: $option. Please use info, disk, or users."
        exit 1
        ;;
esac

# End of script
