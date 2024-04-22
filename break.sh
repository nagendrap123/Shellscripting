#!/bin/bash
#example of break in a loop
#we need to confirm the given no. if exit or not 
no=6
for i in 1 2 3 4 5 6 7 8 9
do
if [ $no -eq $i ]
then 
echo "number is $no found"
fi 
echo "number is $i"
done 