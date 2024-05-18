#!/bin/bash
# Invoke this script with three command line parameters,
set $(uname -a) # Sets the positional parameters to the output
# of the command `uname -a`
echo "Positional parameters after set \`uname -a`\ :"
# $1, $2, $3, etc. reinitialized to result of `uname -a`
echo "Field #1 of 'uname -a' = $1"
echo "Field #2 of 'uname -a' = $2"
echo "Field #3 of 'uname -a' = $3"
echo "Field #3 of 'uname -a' = $@"
echo
exit 0