#!/bin/bash

# Define deployment information
file_path="/path/to/deploy/file.tar.gz"
ip_address="192.168.1.100"
file_checksum=$(sha256sum "$file_path" | cut -d " " -f 1)
file_size=$(du -h "$file_path" | cut -f 1)

# Print deployment information
printf "Deployment Information\n"
printf "----------------------\n"
printf "File Path: %s\n" "$file_path"
printf "IP Address: %s\n" "$ip_address"
printf "File Checksum: %s\n" "$file_checksum"
printf "File Size: %s\n" "$file_size"
