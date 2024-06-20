#!/bin/bash
set -e 
failure () {
    echo "Failed at $1: $2"
}
trap 'failure ${LINENO} "$BASH_COMMAND"' ERR
id=$UID
if [ $id -ne 0 ]
then 
  echo "your not a root user"
else 
  echo "your a root user"
fi 

dnf install nginx -y 
dnf install mysqqqq -y 
dnf install httpd -y 
