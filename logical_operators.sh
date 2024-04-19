#!/bin/bash
#AND operator
echo "enter your age:" age
echo "enter your country:" country
if [ $age -ge 18 ] && [ $country == "india" ]
then 
echo "you can vote"
else 
echo "tou cant vote"