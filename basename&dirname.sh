#!/bin/bash
a="/home/ec2-user/Shellscripting/special_args.sh"
echo "Basename of /home/ec2-user/Shellscripting/special_args.sh = `basename $a`"
echo "Dirname of /home/ec2-user/Shellscripting/special_args.sh = `dirname $a`"
echo
echo "My user is `basename ~/`." # Also works with just ~.
echo "The home directory is `dirname ~/`." # Also works with just ~.
exit 0