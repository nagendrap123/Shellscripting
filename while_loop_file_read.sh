#!/bin/bash
#read the content of the file
while read myvar 
do
echo "value from file is $myvar"
done < names.txt