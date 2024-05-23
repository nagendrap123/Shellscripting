<<comment
$#
$*
$@
$-
$!
$_
$?
$$
$0
comment
#!/bin/bash

# Displaying special parameters
echo "Number of arguments passed: $#"
echo "All arguments as a single string (separated by spaces): $*"
echo "All arguments as separate strings (each quoted): $@"
echo "Current options set for the shell: $-"
echo "Process ID of the most recently executed background (asynchronous) command: $!"
echo "Last argument to the previous command: $_"
echo "Exit status of the most recently executed foreground pipeline: $?"
echo "Process ID of the current shell: $$"
echo "Name of the script: $0"

