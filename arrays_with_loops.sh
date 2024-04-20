#!/bin/bash

# List of servers
servers=("172.31.28.115" "server2" "server3")

# Iterate over each server
for server in "${servers[@]}"
do
    echo "Checking status of $server..."
    
    # Perform some operation, for example, check if the server is reachable
    if ping -c 1 $server &> /dev/null; then
        echo "$server is up and reachable."
    else
        echo "$server is unreachable."
    fi
done
