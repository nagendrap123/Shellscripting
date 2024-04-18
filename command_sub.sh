#!/bin/bash
echo "your are using the $0"
current_path=`pwd`
current_ip=`hostname -I`
kernel_name=`uname -n`
echo "current directory $current_path"
echo "hostname of the Os $current_ip"
echo "kernel_name $kernel_name"

