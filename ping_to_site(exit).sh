#!/bin/bash
read -p "enter the site name: " site
ping -c 1 $site
sleep 5s
if [ $? -eq 0 ]
then 
echo "the site connected successful $site"
else 
echo "uanble to connect $site"
fi 