#!/bin/bash
course="deveops from current script"
echo "before calling the other script, course: $course"
echo "process ID of current shell script: $$"
sh other-script.sh
echo "aftre calling the other script, course: $course"
echo "process ID of current shell script: $$"
