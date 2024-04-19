#!/bin/bash

# Prompt the user to enter a choice
echo "Enter your choice: "
echo "1. Start"
echo "2. Stop"
echo "3. Restart"
echo "4. Exit"

# Read user input
read choice

# Case statement to handle user choice
case $choice in
    1)
        echo "Starting service..."
        # Command to start the service
        ;;
    2)
        echo "Stopping service..."
        # Command to stop the service
        ;;
    3)
        echo "Restarting service..."
        # Command to restart the service
        ;;
    4)
        echo "Exiting script."
        exit 0
        ;;
    *)
        echo "Invalid choice. Please enter a number between 1 and 4."
        ;;
esac

