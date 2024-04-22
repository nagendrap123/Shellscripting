#!/bin/bash
FILEPATH="/home/ec2-user/Shellscripting/continue_loop.sh"
if [ -f $FILEPATH ]
then 
echo "file exist"
else 
"file doesnt exist"
exit 1
fi 
