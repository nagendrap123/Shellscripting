#!/bin/bash

# Example using printf to format output in a table

# Print table header
printf "%-15s %-10s\n" "Student Name" "Grade"
printf "-----------------------------------\n"

# Print student grades
printf "%-15s %-10.2f\n" "John Doe" 85.75
printf "%-15s %-10.2f\n" "Alice Smith" 92.50
printf "%-15s %-10.2f\n" "Bob Johnson" 78.30
