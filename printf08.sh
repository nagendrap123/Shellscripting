#!/bin/bash

# Example using printf to format and display network interface information

# Define network interface information
interface_name="eth0"
ip_address="192.168.1.100"
subnet_mask="255.255.255.0"
gateway="192.168.1.1"
mac_address="00:1A:2B:3C:4D:5E"

# Print formatted network interface information
printf "Network Interface Information\n"
printf "------------------------------\n"
printf "Interface Name: %s\n" "$interface_name"
printf "IP Address: %s\n" "$ip_address"
printf "Subnet Mask: %s\n" "$subnet_mask"
printf "Gateway: %s\n" "$gateway"
printf "MAC Address: %s\n" "$mac_address"
