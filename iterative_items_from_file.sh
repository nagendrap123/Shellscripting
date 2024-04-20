#!/bin/bash
file="/home/ec2-user/Shellscripting/names.txt"
for item in $(cat $file)
do 
echo "name is $item"
done