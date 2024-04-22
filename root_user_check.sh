#!/bin/bash
echo $UID
if [ $UID -eq 0 ]
then 
echo "root user or super user"
else 
echo "your not a root user"
fi 