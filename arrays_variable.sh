#!/bin/bash
# Define an array of server addresses
servers=("server1.example.com" "server2.example.com" "server3.example.com")
echo "${servers[0]}"
echo "${servers[1]}"
echo "${servers[2]}"
echo "${servers[@]}"

# Define an array of application names
applications=("app1" "app2" "app3")

echo "${applications[0]}"
echo "${applications[1]}"
echo "${applications[2]}"
echo "${applications[@]}"

#updating or adding in arrays
applications+=("apps4" "apps5")
echo "${applications[3]}"
echo "${applications[4]}"
echo "${applications[@]}"