#!/bin/bash
# Invoke this script with three command line parameters
set $(uname -a)
#positional parameters after set uname -a :
echo "Field #1 of 'uname -a' = $1"
echo "Field #2 of 'uname -a' = $2"
echo "Field #3 of 'uname -a' = $3"
echo "Field #3 of 'uname -a' = $@"
exit 0

