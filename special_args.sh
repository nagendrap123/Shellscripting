#!/bin/bash

# DevOps Automation Script

# Script name
echo "Script name: $0"

# Number of arguments
echo "Number of arguments: $#"

# All arguments separately
echo "All arguments separately:"
for arg in "$@"; do
    echo "$arg"
done

# All arguments as a single word
echo "All arguments as a single word: $*"

# Present working directory
echo "Present working directory: $PWD"

# Home directory of the user
echo "Home directory of the user: $HOME"

# Username of the current user
echo "Username of the current user: $USER"

# Hostname of the machine
echo "Hostname of the machine: $HOSTNAME"

# Internal Field Separator
echo "Internal Field Separator: $IFS"

# Current options set for the shell
echo "Current options set for the shell: $-"

# Process ID of current script
echo "Process ID of current script: $$"

# Exit status of last command
echo "Exit status of last command: $?"

# Last argument of last command executed
echo "Last argument of last command executed: $_"

# Random integer
echo "Random integer between 0 and 32767: $RANDOM"

# Current line number in the script
echo "Current line number in the script: $LINENO"

# Number of seconds since the script was started
echo "Number of seconds since the script was started: $SECONDS"
