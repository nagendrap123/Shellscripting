#!/bin/bash

# Enable the "nounset" option
set -u
x=10
# Try to use an unset variable
echo "The value of MY_VAR is: $MY_VAR"
echo "the number is $x"
