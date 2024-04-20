#!/bin/bash
#read the content fron the csv file 
#IFS=internal field seperator
while IFs="," read f1 f2 f3 
do 
echo $f1
echo $f2
echo $f3
done < ip_data.csv