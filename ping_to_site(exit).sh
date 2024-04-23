#!/bin/bash
echo "name of the file $0"
read -p "enter the site name: " site
ping -c 1 $site &>/dev/null
if [ $? -eq 0 ]
then 
echo "the site connected successful $site"
else 
echo "uanble to connect $site"
fi 
