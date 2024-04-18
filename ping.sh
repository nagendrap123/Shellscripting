#!/bin/bash
# Author: nagendrap
# Script to ping a server
 date
read -p "Which server should be pinged " server_addr
ping -c3 $server_addr 2>1 > /dev/null || echo "Server Dead"
