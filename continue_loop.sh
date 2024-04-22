#!/bin/bash
#example for continue loop
#suppose we need print odd no only
for i in {1..20}
do 
let r=$i%2
if [ $r -eq 0 ]
then 
continue
fi
echo "odd no is $i"
done 