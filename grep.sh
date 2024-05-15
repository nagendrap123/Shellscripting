SUCCESS=0 # if grep lookup succeeds
word=Linux
filename="/etc/os-release"
grep -q "$word" "$filename" # The "-q" option causes nothing to echo to stdout.
if [ $? -eq $SUCCESS ]
then
 echo "$word found in $filename"
else
 echo "$word not found in $filename"
fi
