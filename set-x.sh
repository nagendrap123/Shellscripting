#!/bin/bash

# Enable debugging mode
set -x

# Perform some operations
echo "Starting script..."
date
ls /non_existent_directory  # This command will fail
echo "Script completed."
