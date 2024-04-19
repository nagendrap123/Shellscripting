#!/bin/bash
read -p "enter the marks: " marks
if [ $marks -ge 80 ]
then
echo "first class student"
elif [ $marks -ge 60 ]
then
echo "second class student"
elif [ $marks -ge 40 ]
then 
echo "third class student"
else 
echo "fail"
fi 

