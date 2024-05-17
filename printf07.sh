#!/bin/bash

# Example using printf to format file information

# Define file path
file_path="/etc/passwd"

# Get file information
file_name=$(basename "$file_path")
file_size=$(du -h "$file_path" | cut -f 1)
file_owner=$(stat -c "%U" "$file_path")
file_permissions=$(stat -c "%A" "$file_path")
file_modified=$(stat -c "%y" "$file_path")

# Print formatted file information
printf "File Information\n"
printf "----------------\n"
printf "File Name: %s\n" "$file_name"
printf "File Size: %s\n" "$file_size"
printf "File Owner: %s\n" "$file_owner"
printf "File Permissions: %s\n" "$file_permissions"
printf "Last Modified: %s\n" "$file_modified"
