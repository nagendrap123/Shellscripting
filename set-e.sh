#!/bin/bash

# Enable "errexit" option
set -e

# Simulating a script that performs some operations
echo "Performing operation 1..."
ls non_existent_file.txt  # This command intentionally fails

echo "Performing operation 2..."
echo "Operation 2 completed successfully."
