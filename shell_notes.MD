What is Linux shell
-----------------------
A shell is provide an environment to the user to execute commands and interact with kernel
Types of shells
-------------------
Ksh
Csh
Zsh
Fish
Bash
Sh
How to check shell type
---------------------------
echo $0
[ec2-user@ip-172-31-85-236 ~]$ echo $0
-bash

[ec2-user@ip-172-31-85-236 ~]$ cat  /etc/shells
/bin/sh
/bin/bash
/usr/bin/sh
/usr/bin/bash
/bin/csh
/bin/tcsh
/usr/bin/csh
/usr/bin/tcsh

Data types
===========
integer
float
decimal
string
boolean
array
arraylist
set,map
array
--------
array is the list of values 
if you define a variable as array, it can be hold list of values 

example:
---------
[ centos@ip-172-31-37-194 ~ ]$ cat array.sh
#!/bin/bash
echo "the file name is:" $0
#array is the list of values
movies=("rrr" "kalki" "darling")
#list start with always 0
#the size of above array is 3
#indexes are 0,1,2
echo "the first movie is: ${movies[0]} "
echo "the second movie is: ${movies[1]} "
echo "the third movie is: ${movies[2]} "

execution
-----------
[ centos@ip-172-31-37-194 ~ ]$ sh array.sh
the file name is: array.sh
the first movie is: rrr
the second movie is: kalki
the third movie is: darling
Integer
------
[ centos@ip-172-31-37-194 ~ ]$ cat sum.sh
#!/bin/bash
no1=$1
no2=$2
sum=$((no1+no2))
echo "the value are $no1 and $no2 is: $sum"


execution
-----------
[ centos@ip-172-31-37-194 ~ ]$ sh sum.sh 100 50
the value are 100 and 50 is: 150

54.80.74.82 | 172.31.37.194 | t2.micro | null
[ centos@ip-172-31-37-194 ~ ]$ sh sum.sh 100 nag
the value are 100 and nag is: 100

54.80.74.82 | 172.31.37.194 | t2.micro | null
[ centos@ip-172-31-37-194 ~ ]$ sh sum.sh nag parchuri
the value are nag and parchuri is: 0

 
What is shell scripting
-------------------------------
Shell script consist of set of commands to perform a task
All the commands executed sequentially
Some task like file manipulation, user interaction,automation of task etc

**exit codes**
-----------------
exit 0 --- it means command executed successfully
exit 1 and above – its means command got an error
we have to check the exit code status --- echo $?
[ec2-user@ip-172-31-24-151 ~]$ echo $?
0
[ec2-user@ip-172-31-24-151 ~]$ lss
-bash: lss: command not found
[ec2-user@ip-172-31-24-151 ~]$ echo $?
127


**variables**
---------------
A variable hold some value
Var_name=value
Var_name=$(command) # $(hostname)
Echo $var_name
Constant variable
---------------------
[ec2-user@ip-172-31-85-236 ~]$ cat consta_var.sh
#!/bin/bash
readonly course="DevOps"
echo "We are working in $course"
course="sql"
echo "we are not working in $course"


Execute 
----------
[ec2-user@ip-172-31-85-236 ~]$ sh consta_var.sh
We are working in DevOps
consta_var.sh: line 4: course: readonly variable

Two types
1. User defined variables
2. Environment variables
1. User defined variables
-------------------------------
To declare a variable, just type the name you want and set its value
using the equals sign (=).
to print the variable's value, you should use the dollar
sign ($) before it.

2. Environment variables
-----------------------------

** command substitution** 
--------------------------------
We can use the command substitution for linux commands stored in variables and execution purpose
$()
``
#!/bin/bash
echo "your are using the $0"
current_path=`pwd`
current_ip=`hostname -I`
kernel_name=`uname -n`
echo "current directory $current_path"
echo "hostname of the Os $current_ip"
echo "kernel_name $kernel_name"
We need to install the Tomcat server
--------------------------------------------
Manual steps
---------------
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.88/bin/apache-tomcat-9.0.88.tar.gz
tar -xvzf apache-tomcat-9.0.88.tar.gz
rm -rf apache-tomcat-9.0.88.tar.gz
mv apache-tomcat-9.0.88 tomcat-9
**Arrays**
-----------------
How to define an array
myarray=(1 2 hello “hey man”)
How to get values from array
---------------------------
echo “${myarray[0]}”
echo “${myarray[1]}”
Arrays key-value
----------------------
declare -A myarray
myarray=( [name]=nagendra [age]=27)
echo ${myarray[name]}”
  
***user interaction***
=======================
 read <var_name>
read -p “your name” Name
**Arthematic operations**
----------------------------------
By using let command
Let a++
Let a=5*10
((a++))
((a=5*10))
Conditional statements
-----------------------------
If—else statement
-------------
If [condition]
Then
Condition1
Else 
Condition2
Fi
Equal to 
-eq/==
Greaterthanorequalto
-ge
Lessthanorequalto
-le
Greaterthan
-gt
Lessthan
-lt
Not equalto 
-ne/!=

Elif statement
-------------------
If [ $marks -ge 80] 
Then 
     Echo “first division”
Elif [ $marks -ge 60]
then
Echo “second division”
Else 
  Echo “fail”
Fi
Case statement
--------------------
Echo “hey choose an option”
Echo “a= to see the current date”
Echo “b= list of files of a current directory”
Read choice
Case $choice in
a)date;;
b)ls;;
*)echo “not valid script”
esac
 ***logical operators***
--------------------------
Condition1 && condition2
If both conditions true then true else false
Condition1 || condition2
If any one condition true then true
-eq ----number comparison
== ---- string comparison
Condition1 && condition2 || condition3
Execute condition2 only when 1 is true else execute conditon3
***loops****
----------------------
1. For loop

for item in list
do
    # Commands to execute for each item
Done

For I in 1 2 3 4 5
Do
Echo “number is $i”
Done
Iterative values from file
---------------------------------
#!/bin/bash
Items=”/home/ec2-user/file.txt”
For item in $(cat $items)
Do
Echo “$item”
Done

While loop
---------------
Count=0
Num=10
While [ $count -le $num ]
Do 
Echo “numbers are $count”
Let count++
Done

Until loop
---------------
#!/bin/bash
a=10
until [ $a -eq 1 ]
do
echo "$a"
let a--
done

Infinite loop
----------------
While loop with IFS
-----------------------
#!/bin/bash
#read the content fron the csv file 
#IFS=internal field seperator
while IFs="," read f1 f2 f3 
do 
echo $f1
echo $f2
echo $f3
done < ip_data.csv

Read the csv data with IFS using awk command
------------------------------------------------------
#!/bin/bash
cat ip_data.csv | awk 'NR!=1 {print}' | while IFS=',' read id first_name last_name email gender ip_address
do 
echo "id of employee is $id"
echo "first name of emp is $first_name"
echo "last name of emp is $last_name"
echo "gender of emp $gender"
echo "email of emp $email"
echo "ip of emp is $ip_address"
done



***functions***
=================
Block of code which perform some task and run when it is called 
Can be re-used in many times in the program which lesson of lines of the code 
We can pass the arguments to the method 
How to make functions
------------------------------
#!/bin/bash

# Define a function
function_name() {
    # Function body: commands to be executed when the function is called
    # You can use parameters passed to the function as $1, $2, etc.
    # Access them like regular shell script arguments
    echo "Hello, $1!"
}

# Call the function with arguments
function_name "John"

or 
function_name () {
condtions
}
To call the function
Function_name

How to use arguments in function
--------------------------------------------
#!/bin/bash
#how to create the function
 welcomeNote () {
    echo "------------------"
    echo "welcome $1"
    echo "age is $2"
    echo "city is $3"
    echo "------------------"
}
#to call the function 
welcomeNote nag 28 nellore
welcomeNote sruthi 20 nellore
welcomeNote jaya 30 iskapalli

example
--------
#!/bin/bash
echo "file name is: " $0
id=`echo $UID`
if [ id -ne 0 ]
then 
  echo "not a root user"
  exit 1
else 
  echo "root user"
fi 
VALIDATE () {
    if [ $1 -ne 0 ]
    then 
      echo "$2 installation.....FAILURE"
    else 
      echo "$2 installation .....SUCCESS"  
   fi 
}

dnf install nginx -y 
VALIDATE $? "nginx"


***arguments passing***
----------------------------
$#: The number of arguments passed to the script.
$@: All the arguments passed to the script as separate words.
$*: All the arguments passed to the script as a single word.
$?: The exit status of the last command executed.
$$: The process ID of the current script.
$!: The process ID of the last background command.
$0: The name of the script itself.
$_: The last argument of the last command executed.
$-: The current options set for the shell.
$HOME: The home directory of the user.
$PWD: The present working directory.
$OLDPWD: The previous working directory.
$IFS: The Internal Field Separator, used for word splitting after expansion and to split lines into words with the read built-in command.
$USER: The username of the current user.
$HOSTNAME: The hostname of the machine.
$RANDOM: A random integer between 0 and 32767.
$LINENO: The current line number in the script.
$SECONDS: The number of seconds since the script was started.
$0 to $9: The positional parameters, where $0 is the script name, and $1 to $9 are the first nine arguments passed to the script.

Useful concepts
---------------------
Break --- to stop the loop
Continue --- to stop current interaction of loop and start next interaction
Sleep --- to create delay between two executions 
Example: sleep 1s/1m
Exit – to stop script at a point
Exit status $? – gives you status of previous command if that is successful
Basename—it will give the filename
Dirname ---its skip the file name and only give directory name
Realpath --- it will give full path of a file name 

Check if file / directory exit or not 
----------------------------------------------
If [ -d folder_name ] if folder exists
If [ ! -d folder_name ] if does not exists
If [ -f filename ] if file exists
If [ ! -f filename ] if file does not exists 


Bash variables
--------------------
RANDOM --- a random integer between 0 and 32767 is generated 
UID – user Id of the user logged in 
[ec2-user@ip-172-31-82-207 ~]$ echo $RANDOM
9070
[ec2-user@ip-172-31-82-207 ~]$ echo $RANDOM
16825
[ec2-user@ip-172-31-82-207 ~]$ echo $RANDOM
912
[ec2-user@ip-172-31-82-207 ~]$ echo $UID
1000
[ec2-user@ip-172-31-82-207 ~]$ echo $UID
1000


Root user UID is 0
***redirection in a script***
=========================

***redirection in a script**

>, >>

Success -1 >
error -2
& --both success and error 

***colours***
========
In shell scripting, you can use color codes to add some flair to your output. Here's a basic rundown:

1. **Foreground Colors**:
   - Black: `\033[0;30m` or `\033[30m`
   - Red: `\033[0;31m` or `\033[31m`
   - Green: `\033[0;32m` or `\033[32m`
   - Yellow: `\033[0;33m` or `\033[33m`
   - Blue: `\033[0;34m` or `\033[34m`
   - Magenta: `\033[0;35m` or `\033[35m`
   - Cyan: `\033[0;36m` or `\033[36m`
   - White: `\033[0;37m` or `\033[37m`
   
2. **Background Colors**:
   - Black: `\033[0;40m` or `\033[40m`
   - Red: `\033[0;41m` or `\033[41m`
   - Green: `\033[0;42m` or `\033[42m`
   - Yellow: `\033[0;43m` or `\033[43m`
   - Blue: `\033[0;44m` or `\033[44m`
   - Magenta: `\033[0;45m` or `\033[45m`
   - Cyan: `\033[0;46m` or `\033[46m`
   - White: `\033[0;47m` or `\033[47m`

3. **Text Attributes**:
   - Bold: `\033[1m`
   - Underline: `\033[4m`
   - Blink: `\033[5m`
   - Reverse: `\033[7m`
   - Reset all attributes: `\033[0m`

For example, to print "Hello World" in red with a blue background, you can do:


echo -e "\033[0;31;44mHello World\033[0m"


This will print "Hello World" with red text on a blue background. Don't forget the `\033[0m` at the end to reset the colors back to default. The `-e` flag for `echo` is used to enable interpretation of backslash escapes.


What is /dev/null
---------------------
In case if you don’t wanna print the output of command on a terminal or write in a file
We can redirect output to /dev/null
Example: cd /root &> /dev/null
[ec2-user@ip-172-31-20-167 ~]$ cd /root
-bash: cd: /root: Permission denied
[ec2-user@ip-172-31-20-167 ~]$ cd /root &> /dev/null


[ec2-user@ip-172-31-20-167 Shellscripting]$ cat 'ping_to_site(exit).sh'
#!/bin/bash
read -p "enter the site name: " site
ping -c 1 $site &>/dev/null
if [ $? -eq 0 ]
then
echo "the site connected successful $site"
else
echo "uanble to connect $site"
fi


Log messages
===============
If you want to maintain the logging for your script, you can use logger in script 
You can find the logs under
/var/logs/messages
Example: #logger “hey buddy”
**debugging in the script**
---------------------------------
If can enable the debugging of the script using below in the script
set -x
 if you want to exit our script when a command fail
set -e
exit codes status
===============
Code Description
0   Successful completion of the command
1   General unknown error
2        Misuse of shell command
126       The command can’t execute
127       Command not found
128      Invalid exit argument
128+x    Fatal error with Linux signal x
130    Command terminated with Ctl-C
255    Exit status out of rang

Examples
[ ec2-user@ip-172-31-22-152 ~ ]$ lm
-bash: lm: command not found

34.224.33.194 | 172.31.22.152 | t2.micro | null
[ ec2-user@ip-172-31-22-152 ~ ]$ $?
-bash: 127: command not found

34.224.33.194 | 172.31.22.152 | t2.micro | null
[ ec2-user@ip-172-31-22-152 ~ ]$ echo $?
127

34.224.33.194 | 172.31.22.152 | t2.micro | null
[ ec2-user@ip-172-31-22-152 ~ ]$ ls

34.224.33.194 | 172.31.22.152 | t2.micro | null
[ ec2-user@ip-172-31-22-152 ~ ]$ echo $?
0

34.224.33.194 | 172.31.22.152 | t2.micro | null
[ ec2-user@ip-172-31-22-152 ~ ]$

Note1:
------------
You can change that to return your own exit status code. The exit command allows you to
specify an exit status when your script ends:
#!/bin/bash
# testing the exit status
var1=10
var2=30
var3=$[ $var1 + var2 ]
echo The answer is $var3
exit 5

Execution:
[ ec2-user@ip-172-31-22-152 ~ ]$ sh exit_status1.s
The answer is 40

34.224.33.194 | 172.31.22.152 | t2.micro | null
[ ec2-user@ip-172-31-22-152 ~ ]$ echo $?
5

Exit codes range ---- 0-255
Which command
===========
which command-xxx gives the full path to "command-xxx". This is useful for finding out whether a particular command or utility is installed on the system
[ ec2-user@ip-172-31-22-152 ~ ]$ which ls
alias ls='ls --color=auto'
        /usr/bin/ls

Whereis command
----------------------
whereis command-xxx gives the full path to "command-xxx", but also to its manpage
[ ec2-user@ip-172-31-22-152 ~ ]$ whereis ls
ls: /usr/bin/ls /usr/share/man/man1/ls.1.gz
How to print the basename and directory 
===================================
#!/bin/bash
a="/home/ec2-user/Shellscripting/special_args.sh"
echo "Basename of /home/ec2-user/Shellscripting/special_args.sh = `basename $a`"
echo "Dirname of /home/ec2-user/Shellscripting/special_args.sh = `dirname $a`"
echo
echo "My user is `basename ~/`." # Also works with just ~.
echo "The home directory is `dirname ~/`." # Also works with just ~.
exit 0

Execution 
[ ec2-user@ip-172-31-22-152 ~/Shellscripting ]$ sh 'basename&dirname.sh'
Basename of /home/ec2-user/Shellscripting/special_args.sh = special_args.sh
Dirname of /home/ec2-user/Shellscripting/special_args.sh = /home/ec2-user/Shellscripting

My user is ec2-user.
The home directory is /home.

, cksum, md5sum command
=====================
These are utilities for generating checksums. A checksum is a number mathematically calculated from the contents of a file, for the purpose of checking its integrity. A script might refer to a list of checksums for security purposes, such as ensuring that the contents of key system files have not been altered or corrupted. For security applications, use the 128-bit md5sum (message digest checksum) command.

[ ec2-user@ip-172-31-22-152 ~/Shellscripting ]$ cksum ram_utilisation.sh
1271018113 784 ram_utilisation.sh

34.224.33.194 | 172.31.22.152 | t2.micro | https://github.com/nagendrap123/Shellscripting.git
[ ec2-user@ip-172-31-22-152 ~/Shellscripting ]$ md5sum ram_utilisation.sh
c330786b2662fb0256b057bb9e5fc666  ram_utilisation.sh

How to check a word by using in grep command
=====================================
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

Execution
[ ec2-user@ip-172-31-22-152 ~/Shellscripting ]$ sh grep.sh
Linux found in /etc/os-release


Note:
Egrep ===== grep -E
Fgrep === grep -F
Agrep ===== grep -a
Compressed files 
----------------------
Zgrep
Zegrep
Tr command
==========
The tr command in Unix-like operating systems is a versatile tool for translating or deleting characters. It stands for "translate" or "transliterate
tr [OPTION]... SET1 [SET2]
SET1: The set of characters to be translated or deleted.
SET2: The set of characters to translate to (optional). If not provided, characters in SET1 will be deleted.
-d: Delete characters in SET1.
-s: Squeeze multiple occurrences of characters in SET1 to a single character.
-c: Complement SET1; that is, replace characters NOT in SET1.
-t: Translate using SET1, but delete characters NOT in SET2.

#!//bin//bash
# Replace all occurrences of 'a' with 'x'
echo "apple" | tr 'a' 'x'  # Output: xpple

# Delete all digits
echo "Hello123World456" | tr -d '0-9'  # Output: HelloWorld

# Convert uppercase letters to lowercase
echo "HELLO" | tr 'A-Z' 'a-z'  # Output: hello

# Squeeze repeated occurrences of spaces into a single space
echo "This   is    a   sentence." | tr -s ' '  # Output: This is a sentence.

# Complement (replace characters NOT in SET1)
echo "abcdefg" | tr -c 'aeiou' '*'  # Output: *e****

Execution
-----------
[ ec2-user@ip-172-31-25-118 ~/Shellscripting ]$ sh tr_command.sh
xpple
HelloWorld
hello
This is a sentence.
a***e***

Example 2
==============
The file content changes to upper case 
---------------------------------------------
This script changes the contents of a file to uppercase using the `tr` command. Let's break it down step by step:

1. **Shebang (`#!/bin/bash`)**: Indicates that this script should be interpreted by the Bash shell.

2. **Comments**: The script starts with a comment that explains its purpose.

3. **Error Code Definition**: `E_BADARGS=65` sets up a variable to hold the exit code to be used when the script encounters a bad argument.

4. **Argument Check**: 
  
   if [ -z "$1" ]
  
   This checks if the first command-line argument (`$1`) is empty or not provided.

5. **Usage Message**: 
  
   echo "Usage: `basename $0` filename"
  
   If no filename argument is provided, this line prints a usage message using `echo`, incorporating the script's name (`basename $0`) and instructs how to use the script.

6. **Exit on Bad Arguments**:
   
   exit $E_BADARGS
   
   If no filename argument is provided, the script exits with the error code `E_BADARGS`.

7. **`tr` Command**:
   tr a-z A-Z <"$1"
      This line reads the contents of the file whose name is stored in `$1` (the first command-line argument), translates all lowercase characters (`a-z`) to uppercase (`A-Z`), and prints the result to the standard output.
So, in summary, this script checks if a filename argument is provided, and if so, it converts the contents of that file to uppercase using the `tr` command. If no filename argument is provided, it prints a usage message.

#!/bin/bash
#!/bin/bash
# Changes a file to all uppercase.
E_BADARGS=65
if [ -z "$1" ] # Standard check for command line arg.
then
 echo "Usage: `basename $0` filename"
 exit $E_BADARGS
fi 
tr a-z A-Z <"$1"
# Same effect as above, but using POSIX character set notation:
# tr '[:lower:]' '[:upper:]' <"$1"
exit 0

Execution:
[ ec2-user@ip-172-31-25-118 ~/Shellscripting ]$ sh file_name_change_upper.sh tr_command.sh
#!//BIN//BASH
# REPLACE ALL OCCURRENCES OF 'A' WITH 'X'
ECHO "APPLE" | TR 'A' 'X'  # OUTPUT: XPPLE

# DELETE ALL DIGITS
ECHO "HELLO123WORLD456" | TR -D '0-9'  # OUTPUT: HELLOWORLD

# CONVERT UPPERCASE LETTERS TO LOWERCASE
ECHO "HELLO" | TR 'A-Z' 'A-Z'  # OUTPUT: HELLO

# SQUEEZE REPEATED OCCURRENCES OF SPACES INTO A SINGLE SPACE
ECHO "THIS   IS    A   SENTENCE." | TR -S ' '  # OUTPUT: THIS IS A SENTENCE.

# COMPLEMENT (REPLACE CHARACTERS NOT IN SET1)
ECHO "ABCDEFG" | TR -C 'AEIOU' '*'  # OUTPUT: *E****


Column command
==================
The column command in Unix-like operating systems is used to format text in columns. It reads from standard input or from one or more specified files and formats the input into multiple columns for display on the terminal
column [OPTIONS] [FILE...]
-t: Automatically determines the number of columns and their widths by examining the input. It is useful for formatting tabular data.
-c: Specifies the number of columns to format the input into.
-s: Specifies a custom delimiter character to separate fields in the input (default is whitespace).
Csv data convert into column data 
==============================
[ ec2-user@ip-172-31-25-118 ~/Shellscripting ]$ cat data.csv
id,first_name,last_name,email,gender,ip_address
1,Katti,Gillean,kgillean0@gizmodo.com,Female,75.225.0.236
2,Truman,Speechly,tspeechly1@ox.ac.uk,Male,94.164.24.111
3,Sydney,Yankeev,syankeev2@naver.com,Female,86.210.121.169
4,Luigi,Byas,lbyas3@yolasite.com,Male,44.104.74.93
5,Kennedy,Dicky,kdicky4@cdbaby.com,Male,136.212.216.148

Execution
----------
[ ec2-user@ip-172-31-25-118 ~/Shellscripting ]$ column -t -s ',' data.csv
id  first_name  last_name  email                  gender  ip_address
1   Katti       Gillean    kgillean0@gizmodo.com  Female  75.225.0.236
2   Truman      Speechly   tspeechly1@ox.ac.uk    Male    94.164.24.111
3   Sydney      Yankeev    syankeev2@naver.com    Female  86.210.121.169
4   Luigi       Byas       lbyas3@yolasite.com    Male    44.104.74.93
5   Kennedy     Dicky      kdicky4@cdbaby.com     Male    136.212.216.148


Example2
===========
#!/bin/bash
# This is a slight modification of the example file in the "column" man page.
(printf "PERMISSIONS LINKS OWNER GROUP SIZE MONTH DAY HH:MM PROG-NAME\n" \
; ls -l |head | sed 1d) | column -t
# The "sed 1d" in the pipe deletes the first line of output,
#+ which would be "total N",
#+ where "N" is the total number of files found by "ls -l".
# The -t option to "column" pretty-prints a table.
exit 0


Execution
[ ec2-user@ip-172-31-25-118 ~/Shellscripting ]$ sh column_command.sh
PERMISSIONS  LINKS  OWNER     GROUP     SIZE  MONTH  DAY  HH:MM  PROG-NAME
-rw-r--r--   1      ec2-user  ec2-user  531   May    16   03:49  arrays_variable.sh
-rw-r--r--   1      ec2-user  ec2-user  408   May    16   03:49  arrays_with_loops.sh
-rw-r--r--   1      ec2-user  ec2-user  139   May    16   03:49  arthmatic_operations.sh
-rw-r--r--   1      ec2-user  ec2-user  408   May    16   03:49  ayyas_with_loops.sh
-rw-r--r--   1      ec2-user  ec2-user  361   May    16   03:49  basename&dirname.sh
-rw-r--r--   1      ec2-user  ec2-user  211   May    16   03:49  break.sh
-rw-r--r--   1      ec2-user  ec2-user  664   May    16   03:49  case_statement.sh
-rw-r--r--   1      ec2-user  ec2-user  409   May    16   04:59  column_command.sh
-rw-r--r--   1      ec2-user  ec2-user  218   May    16   03:49  command_sub.sh


Nl command
===========
Line numbering filter. nl filename lists filename to stdout, but inserts consecutive numbers at the beginning of 
each non-blank line. If filename omitted, operates on stdin.
The output of nl is very similar to cat -n, however, by default nl does not list blank lines.
nl [OPTIONS] [FILE...]
-b: Specifies the numbering style.
-b a: Numbers all lines.
-b t: Numbers only non-empty lines.
-b p: Numbers no lines (useful in combination with -i).
-i: Specifies the line number increment. By default, it's set to 1.
-v: Specifies the starting line number. By default, it's set to 1.
1.number all lines in a file
---------------------------------
nl file.txt
2. Number non empty lines
-----------------------------------
nl -b t file.txt
3. Start numbering from a specific line number
------------------------------------------------------------
nl -v 100 file.txt
4. Specify the line number increment 
--------------------------------------------
nl -i 10 file.txt

pr command
============
The pr command in Unix-like operating systems is used to format text files for printing or for viewing on the terminal. It paginates or columnates the input for better readability.
pr [OPTIONS] [FILE...]
-n: Specifies the number of columns for output.
-t: Suppresses headers and trailers (like page headers and footers).
-s: Specifies the column width for output.
-w: Specifies the page width.
-F: Disables pagination.
1. print a file with default settings 
---------------------------------------------
pr file.txt
2.specify the number of columns
-------------------------------------------
pr -n 2 file.txt
3.suppress the headers and trailers
------------------------------------------------
pr -t file.txt
4.specify the column width 
----------------------------------
pr -s,10 file.csv
5.specify page width
------------------------
pr -w 80 file.txt
6.disable the page notation(***)
---------------------------------
Pr -F file.csv

Sleep command
------------------
This is the shell equivalent of a wait loop. It pauses for a specified number of seconds, doing nothing. This can be useful for timing or in processes running in the background,
The sleep command defaults to seconds, but minute, hours, or days may also be specified
Examples
Sleep 3 #pause 3 sec
Sleep 3h  #pause 3 hours
Xargs command
------------------
is used to build and execute command lines from standard input. It reads items from the standard input, delimited by blanks or newlines, and executes the specified command with those items as arguments.
xargs [OPTIONS] [COMMAND [INITIAL-ARGS]]
-n: Specifies the maximum number of arguments to pass to the command in a single execution.
-0: Specifies that input items are terminated by a null character instead of by whitespace.
-I: Specifies a placeholder to be replaced by the input items when executing the command.
Expr command
==================
All-purpose expression evaluator: Concatenates and evaluates the arguments according to the operation given (arguments 
[ ec2-user@ip-172-31-16-112 ~ ]$ sleep 3 &
[1] 1586expr EXPRESSION
Arithmetic operators: +, -, *, /, % (addition, subtraction, multiplication, division, modulus).
String operators: : (pattern matching), = (equality), length STRING (string length).

expr 5 + 3
expr length "Hello"
result=$(expr 10 / 2)
echo $result

jobs command
=============
Lists the jobs running in the background, giving the job number. Not as useful as ps.
1. Start some processes or commands in the background using the & operator at the end of the command
Example
[ ec2-user@ip-172-31-16-112 ~ ]$ sleep 3 &
                                                                             [1] 1586

“1” is the job number
1586 is the PID number
To kill this job/process, either a kill %1 or a kill 1586 works
2. After starting some background jobs, you can use the jobs command to see a list of those jobs and their statuses:
[ ec2-user@ip-172-31-16-112 ~ ]$ jobs
                   [1]+  Done                    sleep 3

Note: jobs command is specific to the shell session in which it is executed. If you start a new shell session, you won't see jobs from previous sessions

Disown command
================
Remove job(s) from the shell's table of active jobs.
Start a process in the background
[ ec2-user@ip-172-31-16-112 ~ ]$ sleep 600 &
[1] 7127

After starting the background process, you can use the jobs command to see a list of jobs and their job IDs
[ ec2-user@ip-172-31-16-112 ~ ]$ jobs
[1]+  Running                 sleep 600 &

To disown a job and remove it from the shell's job table, you typically use the disown command followed by the job ID.
[ ec2-user@ip-172-31-16-112 ~ ]$ disown %1

52.91.55.10 | 172.31.16.112 | t2.micro | null
[ ec2-user@ip-172-31-16-112 ~ ]$ jobs


Fg command
===========
is used to bring a background job into the foreground, making it the active process that receives input from the user and sends output to the terminal.
Start a process in the background.
[ ec2-user@ip-172-31-16-112 ~ ]$ sleep 300 &
[1] 10220

After starting the background process, you can use the jobs command to see a list of jobs and their job IDs:
[ ec2-user@ip-172-31-16-112 ~ ]$ jobs
[1]+  Running                 sleep 300 &

To bring a background job into the foreground, you typically use the fg command followed by the job ID
[ ec2-user@ip-172-31-16-112 ~ ]$ fg %1
sleep 300

To suspend the job and return to the shell prompt, you can press Ctrl + Z.
^Z
[1]+  Stopped                 sleep 300

52.91.55.10 | 172.31.16.112 | t2.micro | null
[ ec2-user@ip-172-31-16-112 ~ ]$ jobs
[1]+  Stopped                 sleep 300

Bg command
=============
is used to resume a suspended background job by sending it a "continue" signal (SIGCONT).
This command is typically used with jobs that have been stopped or suspended, allowing them to continue execution in the background.
Start a process in the foreground
[ ec2-user@ip-172-31-16-112 ~ ]$ sleep 600
^Z
[2]+  Stopped                 sleep 600

While the process is running, you can suspend it by pressing Ctrl + Z
After suspending the foreground process, you can use the jobs command to see a list of jobs and their job IDs
[ ec2-user@ip-172-31-16-112 ~ ]$ jobs
[1]-  Stopped                 sleep 300
[2]+  Stopped                 sleep 600

To resume a suspended job in the background, you typically use the bg command followed by the job ID
[ ec2-user@ip-172-31-16-112 ~ ]$ bg %2
[2]+ sleep 600 &
[ ec2-user@ip-172-31-16-112 ~ ]$ jobs
[1]+  Stopped                 sleep 300
[2]-  Running                 sleep 600 &

Difference between fg and bg command
================================
1.fg command
============
The fg command is used to bring a background job into the foreground, making it the active process that receives input from the user and sends output to the terminal.
It is typically used when you want to interact with a background job directly, perhaps to provide further input or monitor its progress.
Example: fg %1 (brings the job with job ID 1 into the foreground)

2.bg command
===========
The bg command is used to resume a suspended background job by sending it a "continue" signal (SIGCONT), allowing it to continue execution in the background.
It is typically used when you have a job suspended (e.g., by pressing Ctrl + Z) and want to resume it in the background.
Example: bg %1 (resumes the job with job ID 1 in the background).
Wait command
==============
The wait command is used to pause the execution of a script or shell session until all specified background processes have completed.
It can be used without arguments to wait for all background processes, or you can specify the process IDs (PIDs) of specific background processes to wait for.
Start one or more processes in the background using the & operator at the end of the command
[ ec2-user@ip-172-31-16-112 ~ ]$ sleep 100 &
[1] 22463

After starting the background processes, you can use the wait command to wait for their completion
[ ec2-user@ip-172-31-16-112 ~ ]$ wait
[1]+  Done                    sleep 100


The shell will execute the following command once 100 seconds have passed.
The assignment appears as "Done" after it has finished in 100 seconds.
Printf command
==============
is used to format and print data according to a specified format. It is similar to the echo command but provides more control over the output format
printf FORMAT [ARGUMENT]...
FORMAT: Specifies the format string, which defines how the output will be formatted. This can include placeholders for inserting values.
ARGUMENT: Specifies the arguments to be inserted into the format string
%s: Insert a string.
%d or %i: Insert a signed decimal integer.
%u: Insert an unsigned decimal integer.
%f: Insert a floating-point number in decimal notation.
%e or %E: Insert a floating-point number in scientific notation (lowercase or uppercase, respectively).
%x or %X: Insert an unsigned hexadecimal number (lowercase or uppercase, respectively).
%o: Insert an unsigned octal number.
%c: Insert a single character.
%p: Insert a pointer address.
%n: Insert the number of characters written so far.
%%: Insert a literal percent sign.
Additionally, you can specify flags and modifiers to control the formatting further:

-: Left-justify within the given field width.
+: Forces to precede the result with a plus or minus sign (+ or -).
#: Used with o, x, or X specifiers, adds a prefix indicating octal, hexadecimal, or hexadecimal, respectively.
0: Left-pads the number with zeros (0) instead of spaces when padding is specified.
*: The field width or precision is specified as an argument before the actual value.
.precision: Specifies the precision of floating-point numbers or the maximum number of characters to be written for strings.
-v var: Store the output in the shell variable var.
-: Read from standard input.
#!/bin/bash

# Example using printf format specifiers

# String
printf "String: %s\n" "Hello, World!"

# Decimal integers
printf "Decimal: %d\n" 123

# Floating-point numbers
printf "Float: %.2f\n" 3.14159

# Scientific notation
printf "Scientific: %e\n" 1000000

# Hexadecimal
printf "Hexadecimal: %x\n" 255

# Octal
printf "Octal: %o\n" 255

# Character
printf "Character: %c\n" 'A'

# Literal percent sign
printf "Percent: %%\n"



Output
======
String: Hello, World!
Decimal: 123
Float: 3.14
Scientific: 1.000000e+06
Hexadecimal: ff
Octal: 377
Character: A
Percent: %

Set command
===============
is used to set or change various shell options and positional parameters. It can be used to alter the behavior of the shell or to set variables and attributes
Setting Shell Options
set -x: Enable debugging mode, which causes the shell to print each command before executing it.
set -e: Enable the "exit on error" option, which causes the shell to exit immediately if any command exits with a non-zero status.
set -u: Enable the "uninitialized variables" option, which causes the shell to treat unset variables as an error when they are referenced.
set +x, set +e, set +u: Disable these options respectively.
Setting Positional Parameters
set -- arg1 arg2: Set the positional parameters to arg1, arg2, etc.
set --: Clear all positional parameters
Setting Variables
set var=value: Set the variable var to value.
set -- var1 var2 var3: Set the positional parameters to var1, var2, var3, etc.



set -o 
=======
#!/bin/bash

# Enable the "pipefail" option to make pipelines return a non-zero status if any command fails
set -o pipefail

# Perform a pipeline operation
cat non_existent_file.txt | grep "pattern" | sort

# Check the exit status of the pipeline
if [ $? -ne 0 ]; then
  echo "Pipeline failed"
else
  echo "Pipeline completed successfully"
fi

Execution
==========
set -o pipefail enables the pipefail option, which causes a pipeline to return a non-zero exit status if any command in the pipeline fails.
The script attempts to perform a pipeline operation that involves reading from a non-existent file (non_existent_file.txt), searching for a pattern using grep, and sorting the output using sort.
Because pipefail is enabled, if any command in the pipeline fails, the entire pipeline will return a non-zero exit status.
The script checks the exit status of the pipeline using $? and prints an appropriate message based on whether the pipeline succeeded or failed.
Set -u 
=========
#!/bin/bash

# Enable the "nounset" option
set -u
x=10
# Try to use an unset variable
echo "The value of MY_VAR is: $MY_VAR"
echo "the number is $x"

We use set -u to enable the nounset option, which treats references to unset variables as errors.
We then attempt to use an unset variable, $MY_VAR, in an echo statement.
Set -e 
=======
#!/bin/bash

# Enable "errexit" option
set -e

# Simulating a script that performs some operations
echo "Performing operation 1..."
ls non_existent_file.txt  # This command intentionally fails

echo "Performing operation 2..."
echo "Operation 2 completed successfully."

Execution
set -e enables the errexit option, causing the script to terminate if any command returns a non-zero exit status.
The script attempts to perform two operations sequentially.
Operation 1 intentionally fails with the ls non_existent_file.txt command, simulating a scenario where a critical operation encounters an error.
Since set -e is enabled, the script immediately terminates after Operation 1 fails, and Operation 2 is not executed.
Set -x
is used in shell scripts to enable debugging mode, which displays each command before it is executed. This is useful for understanding the flow of the script and for troubleshooting purposes.
Exec command
===========
the exec command is used to replace the current shell process with a new program. It's a built-in command available in most shells, including Bash.

exec program [arguments]
Where:

program is the name of the program to be executed.
arguments are optional arguments to be passed to the program
#!/bin/bash

echo "This is a script."
exec ls -l
echo "This line will not be executed."


Execution
This is a script.
total 8
-rwxr-xr-x 1 user user  152 May 21 14:30 my_script.sh
-rw-r--r-- 1 user user 1105 May 21 14:30 some_file.txt

the script executes the echo command, then the exec command replaces the shell process with ls -l, and the script does not proceed to the next echo command. This behavior can be useful in certain scenarios, such as when you want to replace the shell process with a different program permanently within a script.
Type command
============
is used to determine how a command name is interpreted by the shell. It provides information about whether a given command is a built-in shell command, an external command (executable file), or an alias.
type [options] name [name...]
Where:

[options] are optional arguments that modify the behavior of the type command.
name [name...] are the names of the commands to be examined.
-a: Display all locations of the command, including aliases and executable files found in the PATH.
-t: Display the type of the command (e.g., "alias", "builtin", "file").
Case statement
==============
Syntax
-----------
case expression in
    pattern1)
        # code to execute if expression matches pattern1
        ;;
    pattern2)
        # code to execute if expression matches pattern2
        ;;
    pattern3)
        # code to execute if expression matches pattern3
        ;;
    *)
        # default code to execute if expression matches none of the patterns
        ;;
Esac

Example
=======
#!/bin/bash

# Function to display system information
display_system_info() {
    echo "System Information:"
    echo "-------------------"
    uname -a
    echo ""
    lsb_release -a
}

# Function to display disk usage
display_disk_usage() {
    echo "Disk Usage:"
    echo "-----------"
    df -h
}

# Function to display current users
display_current_users() {
    echo "Current Users:"
    echo "--------------"
    who
}

# Check if the user provided any command-line arguments
if [ $# -eq 0 ]; then
    echo "Usage: $0 [info|disk|users]"
    exit 1
fi

# Extract the first argument
option=$1

# Use a case statement to determine the action
case $option in
    info)
        display_system_info
        ;;
    disk)
        display_disk_usage
        ;;
    users)
        display_current_users
        ;;
    *)
        echo "Invalid option: $option. Please use info, disk, or users."
        exit 1
        ;;
esac

# End of script

Select command
===============
The select command in Linux is a built-in Bash shell command used to create simple menus for interactive shell scripts.
It provides an easy way to present a list of options to the user and allows them to select one.
Syntax
----------
select variable in option1 option2 option3 ...
do
    # Code to execute based on the selected option
    echo "You selected $variable"
done

EOF
=====
EOF stands for "End of File." It's used in a construct called a "Here Document" or "Here Document Input Redirection." A Here Document is a way to pass multiple lines of input to a command or to feed input to a block of code within a shell script

#!/bin/bash

# Prompt the user for configuration details
echo "Please provide the following details:"
read -p "Server IP address: " server_ip
read -p "Database name: " db_name
read -p "Database username: " db_username
read -s -p "Database password: " db_password
echo ""

# Generate the configuration file using a Here Document
cat << EOF > config.ini
[Server]
IP = $server_ip

[Database]
Name = $db_name
Username = $db_username
Password = $db_password
EOF

echo "Configuration file 'config.ini' generated successfully."

**** internal variables****
======================
$LOGNAME
$SHELL
$TERM
$PWD
$PPID
$UID
$EUID
$TMOUT 
$SHELLOPTS
$SECONDS
$PIPESTATUS
$OSTYPE
$MACHTYPE
$PATH
$HOME
$HOSTNAME
$HOSTTYPE
$OLDPWD
$GROUPS
$GLOBIGNORE
$DIRSTACK
$BASH_VERSION
$BASH

a. $BASH
[ centos@ip-172-31-30-117 ~/Shellscripting ]$ echo $BASH
/bin/bash

$BASH_VERSION
-------------------------
you can access the version information of the Bash interpreter using the $BASH_VERSION variable. This variable contains the version number of the Bash interpreter currently running the script.
the version of Bash installed on the system
[ centos@ip-172-31-30-117 ~/Shellscripting ]$ echo $BASH_VERSION
4.4.20(1)-release

$DIRSTACK
------------
The $DIRSTACK variable in shell scripting is an array variable that stores the current directory stack. The directory stack is used to keep track of directories as you change directories (using cd) in a shell session.
[ centos@ip-172-31-30-117 ~/Shellscripting ]$ echo $DIRSTACK
~/Shellscripting


$EUID
====
The $EUID variable in shell scripting stands for "Effective User ID." It contains the effective user ID of the current user executing the script.

[ centos@ip-172-31-30-117 ~/Shellscripting ]$ echo $EUID
1000

54.90.104.195 | 172.31.30.117 | t2.micro | https://github.com/nagendrap123/Shellscripting.git
[ centos@ip-172-31-30-117 ~/Shellscripting ]$ echo $UID
1000

$GLOBIGNORE
============
The $GLOBIGNORE variable in shell scripting is used to control the behavior of pathname expansion (globbing) in the shell. It contains a colon-separated list of patterns specifying filenames to be ignored during pathname expansion
#!/bin/bash

# Set GLOBIGNORE to ignore files with .txt extension
GLOBIGNORE="*.txt"

# List all files in the current directory
echo "Files in the current directory:"
for file in *; do
    echo "- $file"
done

$GROUPS
=======
The $GROUPS variable in shell scripting contains a list of supplementary group IDs associated with the current user. These group IDs are typically used to determine the user's group membership and permissions within the system
[ centos@ip-172-31-30-117 ~ ]$ echo $GROUPS
1000

$HOME
=======
The $HOME variable in shell scripting contains the path to the current user's home directory. It typically points to the directory where a user starts after logging into the system.
[ centos@ip-172-31-30-117 ~ ]$ echo $HOME
/home/centos

$HOSTNAME
========
The $HOSTNAME variable in shell scripting contains the hostname of the system where the script is being executed. It typically represents the name of the computer or device on the network.
[ centos@ip-172-31-30-117 ~ ]$ echo $HOSTNAME
ip-172-31-30-117.ec2.internal

$HOSTTYPE
==========
identifies the system hardware
[ centos@ip-172-31-30-117 ~ ]$ echo $HOSTTYPE
x86_64

$MACHTYPE
=========
The $MACHTYPE variable in shell scripting contains a string that describes the system architecture and the type of machine. It typically represents the machine type for which the current instance of the shell was compiled.
[ centos@ip-172-31-30-117 ~ ]$ echo $MACHTYPE
x86_64-redhat-linux-gnu


$OLDPWD
=========
old working directory ("OLD-print-working-directory", previous directory you were in)
[ centos@ip-172-31-30-117 ~ ]$ echo $OLDPWD


54.90.104.195 | 172.31.30.117 | t2.micro | null
[ centos@ip-172-31-30-117 ~ ]$ cd Shellscripting/

54.90.104.195 | 172.31.30.117 | t2.micro | https://github.com/nagendrap123/Shellscripting.git
[ centos@ip-172-31-30-117 ~/Shellscripting ]$ echo $OLDPWD
/home/centos


$OSTYPE
=======
The $OSTYPE variable in shell scripting contains the operating system type or identifier on which the shell is running. It typically provides information about the type of operating system or the version of Unix or Unix-like system.
54.90.104.195 | 172.31.30.117 | t2.micro | null
[ centos@ip-172-31-30-117 ~ ]$ echo $OSTYPE
linux-gnu

$PATH
======
path to binaries, usually /usr/bin/, /usr/X11R6/bin/, /usr/local/bin, etc.
[ centos@ip-172-31-30-117 ~ ]$ echo $PATH
/home/centos/.local/bin:/home/centos/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin

54.90.104.195 | 172.31.30.117 | t2.mic

$PIPESTATUS
============
Exit status of last executed pipe. Interestingly enough, this does not give the same result as the exit status of the last executed command.
$PPID
======
The $PPID variable in shell scripting contains the process ID (PID) of the parent process of the current shell or script. It represents the ID of the process that spawned the current shell or script.
$PWD
========
working directory (directory you are in at the time)
$SECONDS
===========
The $SECONDS variable in Bash contains the number of seconds since the shell was started. It's a built-in special variable that automatically increments every second.

$SHELLOPTS
=========
`$SHELLOPTS` is an environment variable that contains a colon-separated list of various options and settings that affect the behavior of the shell (typically Bash or another shell compatible with POSIX standards). These options are typically set using built-in shell commands like `set` or `shopt`.

Here's a brief overview of some common options that might appear in `$SHELLOPTS`:

1. **braceexpand**: This option enables or disables the shell's brace expansion feature, where `{}` can be used to generate multiple strings based on patterns.
   
2. **emacs**: This option enables or disables Emacs editing mode within the shell, affecting how command line editing and shortcuts work.

3. **hashall**: When enabled, the shell will remember the full pathname of the first command found during the PATH lookup process. This can speed up command execution by avoiding unnecessary path searches.

4. **histexpand**: If enabled, history expansion is enabled, allowing you to use commands from the history list.

5. **history**: This enables the shell's history feature, allowing it to remember a list of previously executed commands.

6. **interactive-comments**: When enabled, comments beginning with `#` are treated as comments only in interactive mode, not in scripts.

7. **monitor**: Also known as job control, this option enables or disables the shell's ability to run commands in the background and manage them as jobs.

8. **noglob**: Disables pathname expansion (globbing), meaning that wildcards like `*` and `?` are not expanded to matching filenames.

9. **noclobber**: Prevents redirection to overwrite existing files. If a file exists and noclobber is set, the shell will refuse to redirect output to that file.

10. **pipefail**: Causes a pipeline to return the exit status of the last command in the pipeline that returned a non-zero status.

echo $SHELLOPTS


$TMOUT
========
$TMOUT
======
The `$TMOUT` environment variable is used in Unix-like operating systems to automatically log out a user after a period of inactivity. It specifies the number of seconds that the shell session can remain idle before the user is automatically logged out.

Here's how it works:

- If `$TMOUT` is set to a non-negative integer, the shell will automatically log out the user after that number of seconds of inactivity.
- If `$TMOUT` is set to 0, the shell will not automatically log out the user.
- If `$TMOUT` is unset or set to a negative value, the shell will not automatically log out the user.

For example, to set a timeout of 300 seconds (5 minutes), you would use:
export TMOUT=300
This would cause the shell to log out the user if there is no activity within 5 minutes.
Setting `$TMOUT` is often done in shell startup files like `.bashrc` or `.profile` to enforce session timeouts for users. It's particularly useful in environments where security is a concern and you want to ensure that idle sessions are automatically closed to prevent unauthorized access.
$UID
====
user id number
current user's user identification number, as recorded in /etc/passwd
This is the current user's real id, even if she has temporarily assumed another identity through su. $UID is a readonly 
variable, not subject to change from the command line or within a script, and is the counterpart to the id builtin.
$LOGNAME
===========
The LOGNAME environment variable typically stores the login name of the user currently logged in. When you execute echo $LOGNAME in a Unix-like shell, it will print the login name of the user who initiated the current shell session.
[ ec2-user@ip-172-31-16-231 ~ ]$ echo $LOGNAME
ec2-user

$SHELL
==========
3.80.104.24 | 172.31.16.231 | t2.micro | null
[ ec2-user@ip-172-31-16-231 ~ ]$ echo $TERM
xterm

3.80.104.24 | 172.31.16.231 | t2.micro | null
[ ec2-user@ip-172-31-16-231 ~ ]$ echo $SHELL
/bin/bash

Seq command
============
The seq command in Unix-like operating systems is used to generate sequences of numbers. It is particularly useful in scripts or one-liners where you need to generate a sequence of numbers for various purposes.
seq [OPTION]... LAST
seq [OPTION]... FIRST LAST
seq [OPTION]... FIRST INCREMENT LAST

LAST: Generates a sequence from 1 to LAST.
FIRST LAST: Generates a sequence from FIRST to LAST.
FIRST INCREMENT LAST: Generates a sequence from FIRST to LAST with a step size of INCREMENT.
Here are some common options used with the seq command:

-f, --format=FORMAT: Specify the output format. FORMAT is a printf-style format string.
-s, --separator=STRING: Use STRING to separate numbers (default is a newline).
-w, --equal-width: Equalize width by padding with leading zeroes.
-h, --help: Display help message and exit.
-V, --version: Output version information and exit.

Jot command
=========
The jot command is primarily available on BSD and macOS systems and is used to generate sequences of numbers or strings. It's quite similar to the seq command found in many Unix-like systems, but it offers additional features like generating random numbers and formatting strings.

jot [options] [repetitions] [value] [...]
options: Various options to control the behavior of jot.
repetitions: Number of times to repeat the value.
value: The starting value or the first value in a sequence.
Some common options used with the jot command:

-w: Pad numbers with leading zeros to ensure equal width.
-r: Generate random numbers instead of sequential numbers.
-s: Specify the separator between generated values.
-b: Set the beginning value.
-c: Count the number of generated values.

/etc/profile
=======
Certainly! `/etc/profile` in Linux is a system-wide script executed during user login, setting up common settings like environment variables and paths for all users. It's a central configuration file for user sessions.
/etc/bashrc
===========
The `/etc/bashrc` file in Linux is another initialization script, but it's specific to the Bash shell. It's similar to `/etc/profile`, but while `/etc/profile` sets up system-wide settings for all users upon login, `/etc/bashrc` configures settings specifically for Bash shell sessions.

Here's a simplified explanation:

- **Bash-specific Configuration**: Unlike `/etc/profile`, which is generic for all shells, `/etc/bashrc` is tailored specifically for the Bash shell.

- **Per-Shell Configuration**: It sets up configurations that are relevant only to Bash shell sessions, such as aliases, functions, and shell options.

- **System-wide Customizations**: Similar to `/etc/profile`, `/etc/bashrc` applies system-wide customizations, making them available to all users who use the Bash shell.

- **Sourcing by Interactive Shells**: When a Bash shell starts as an interactive login shell, it sources `/etc/profile`, but when it's an interactive non-login shell, it sources `/etc/bashrc`.

- **Modular Approach**: Like `/etc/profile`, `/etc/bashrc` can also source additional scripts or configurations from `/etc/bashrc.d` or similar directories, allowing for a modular approach to system-wide Bash shell configurations.

In essence, `/etc/bashrc` is where you'll find system-wide configurations specifically tailored for the Bash shell.
$HOME/.bash_profile
================
"The `$HOME/.bash_profile` file is a user-specific initialization script used by the Bash shell. It's similar to `/etc/profile`, but it's personalized for each user. This file is executed when a user logs into their account. It allows users to customize their shell environment by defining their own aliases, setting environment variables, and executing specific commands upon login. Users can tailor this file to their preferences, such as adding directories to their PATH or defining custom shell functions. It's a way for users to have their own personalized settings and configurations when working within the Bash shell."
$HOME/.bashrc
==========
"The `$HOME/.bashrc` file is a user-specific configuration script for the Bash shell. Unlike `.bash_profile`, which is executed only upon login, `.bashrc` is executed every time a new Bash shell is started, whether it's a login shell or not. This makes it suitable for defining shell settings, aliases, and functions that are specific to the user's interactive shell sessions. Users commonly use this file to customize their shell environment according to their preferences, such as defining shortcuts (aliases), configuring the prompt, or setting environment variables for their session. It provides users with a convenient way to personalize and fine-tune their Bash shell experience."
$HOME/.bash_logout
===============
1. **Logout Script**: `$HOME/.bash_logout` is a user-specific script executed by the Bash shell when a user logs out of their session.
2. **Clean-Up Actions**: It provides a convenient way for users to define actions that should be performed upon logout, such as cleaning up temporary files, logging out of remote systems, or any other tasks necessary to maintain the user's environment.
3. **Session Termination**: The commands in this file are executed just before the Bash shell terminates the user's session, ensuring that any necessary clean-up actions are performed.
4. **User-Specific**: Similar to `.bashrc` and `.bash_profile`, `.bash_logout` is specific to each user's Bash shell environment, allowing users to customize their logout behavior according to their needs.
5. **Customization**: Users can customize `.bash_logout` to include any commands or scripts relevant to their workflow or environment cleanup requirements.
6. **Security**: It can also be used to ensure security measures, such as logging out of active sessions or closing sensitive files, are enforced upon logout.
In essence, `$HOME/.bash_logout` provides users with a way to execute custom actions or clean-up tasks when they log out of their Bash shell session.
Regular expressions
Sure, here are some real-world examples of how the regular expressions mentioned can be used in shell scripting:

1. **`.` (Dot)**:
   - Find all files with a specific extension: `ls *.txt`
   - Match any character in a string: `grep "a.b" file.txt`

2. **`*` (Asterisk)**:
   - Find all files starting with "file": `ls file*`
   - Replace multiple occurrences of a character: `sed 's/aa*/bb/g' file.txt`

3. **`+` (Plus)**:
   - Match repeated characters: `grep "a\+b" file.txt`
   - Replace one or more occurrences of a pattern: `sed 's/ab\+/cc/g' file.txt`

4. **`?` (Question Mark)**:
   - Match variations in spelling: `grep "colou?r" file.txt`
   - Find files with varying extensions: `ls *.{txt,doc}`

5. **`[]` (Character Class)**:
   - Find words starting with vowels: `grep "^[aeiou]" file.txt`
   - Match specific characters in a range: `grep "[0-9]" file.txt`

6. **`[^]` (Negated Character Class)**:
   - Find lines not containing a certain word: `grep -v "pattern" file.txt`
   - Match lines not starting with a specific character: `grep "^[^a]" file.txt`

7. **`^` (Caret)**:
   - Find lines starting with a specific word: `grep "^start" file.txt`
   - Match patterns at the beginning of a line: `grep "^pattern" file.txt`

8. **`$` (Dollar)**:
   - Find lines ending with a specific word: `grep "end$" file.txt`
   - Match patterns at the end of a line: `grep "pattern$" file.txt`

9. **`()` (Grouping)**:
   - Extract specific parts of a string: `echo "abc123" | grep -o "\(abc\)"`
   - Group patterns for replacement: `sed 's/\(pattern1\)\(pattern2\)/\2\1/g' file.txt`

10. **`|` (Pipe)**:
    - Match multiple patterns: `grep "pattern1\|pattern2" file.txt`
    - Use as an OR condition: `sed '/pattern1\|pattern2/d' file.txt`

POSIX characters
=============
POSIX character classes are predefined character classes used in regular expressions to match specific types of characters. Here are some common POSIX character classes along with their meanings:

[:alnum:]: Matches any alphanumeric character (letters and digits).

[:alpha:]: Matches any alphabetic character.

[:blank:]: Matches a space or a tab character.

[:digit:]: Matches any digit character (0-9).

[:lower:]: Matches any lowercase alphabetic character.

[:upper:]: Matches any uppercase alphabetic character.

[:space:]: Matches any whitespace character (space, tab, newline, etc.).

[:punct:]: Matches any punctuation character.

[:graph:]: Matches any printable character except space.

[:print:]: Matches any printable character including space.

[:xdigit:]: Matches any hexadecimal digit character (0-9, a-f, A-F).

#Idempotency
===========
it is nature of programming irrespective of how many times you run it should not change the result 
Shell scripting is not by default Idempotency nature 

How do you call from other scripts to your script
==================================================
2 ways 
1st way 
------
/. <script-name>.sh 

example
---------
current_script.sh
------------------
#!/bin/bash
course="deveops from current script"
echo "before calling the other script, course: $course"
echo "process ID of current shell script: $$"
./ other-script.sh
echo "aftre calling the other script, course: $course"
echo "process ID of current shell script: $$"

other_script.sh
--------------
#!/bin/bash
course="deveops from other script"
echo "before calling the other script, course: $course"
echo "process ID of current shell script: $$"

excecution
------------
its will through permission denied 
----------------------------------
[ ec2-user@ip-172-31-25-90 ~/Shellscripting ]$ sh current_script.sh
before calling the other script, course: deveops from current script
process ID of current shell script: 5713
current_script.sh: line 5: ./other_script.sh: Permission denied
aftre calling the other script, course: deveops from current script
process ID of current shell script: 5713


we need to give execute permissions to others file 

[ ec2-user@ip-172-31-25-90 ~/Shellscripting ]$ sudo chmod +x other_script.sh

[ ec2-user@ip-172-31-25-90 ~/Shellscripting ]$ sh current_script.sh
before calling the other script, course: deveops from current script
process ID of current shell script: 5885
before calling the other script, course: deveops from other script
process ID of current shell script: 5886
aftre calling the other script, course: deveops from current script
process ID of current shell script: 5885



Note:after Calling other script in current script file variables data  will not be changed
PID of two scripts are different
changes happened in other script will not effect current script

2nd way 
--------
By using source command
source ./ <script-name>.sh

Note: variables can be changes after calling other script
PID of 2 scripts are same 
changes happened in other script will reflected in current script

How to find the error in shell script by using TRAP command
===========================================================
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

BY the execution 
================
Last metadata expiration check: 0:00:07 ago on Thu Jun 20 14:07:42 2024.
No match for argument: mysqqqq
Error: Unable to find a match: mysqqqq
Failed at 16: dnf install mysqqqq -y

How to delete old logs by using shell script
============================================
delete the old logs file delete more than 2 weeks ago 

steps:
1.which folder
2..java,.py,.tar.gz, select the extensions in that folder
3. find only .log files 
4.find the more than 2 weeks logs 

create the folder  mkdir -p tmp/app-logs
create the files past 2 weeks before --- touch -d 20240601 <filename>.log 

Script
-------
#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo -e "$G Source directory exists $N"
else
    echo -e "$R Please make sure $SOURCE_DIRECTORY exists $N"
    exit 1
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

while IFS= read -r line
do
    echo "Deleting file: $line"
    rm -rf $line
done <<< $FILES

Files 
-----
[ ec2-user@ip-172-31-47-61 /tmp/app-logs ]$ ls -ltr
total 0
-rw-r--r-- 1 ec2-user ec2-user 0 Jun  1 00:00 backend.py
-rw-r--r-- 1 ec2-user ec2-user 0 Jun  1 00:00 backend.log
-rw-r--r-- 1 ec2-user ec2-user 0 Jun  1 00:00 backend.java
-rw-r--r-- 1 ec2-user ec2-user 0 Jun  2 00:00 mysql.log

how to scedule by using crontab
-----------------------------
crontab -e  for edit 
crontab -l  list 

to practice crontab
---------------------
https://crontab.guru/examples.html

to check cron logs 
-----------------
etc/var/log/cron 

every 2 mins 
---------------
[ ec2-user@ip-172-31-47-61 /tmp/app-logs ]$ crontab -l
*/2 * * * * sh /home/ec2-user/Shellscripting/delete_old_logs.sh

execution 
------------
[ ec2-user@ip-172-31-47-61 ~/Shellscripting ]$ sh delete_old_logs.sh
 Source directory exists
Deleting file: /tmp/app-logs/mysql.log
Deleting file: /tmp/app-logs/backend.log

Exercise 
----------
zip the files and move to another locations
monitoring the memory of the servers

monitoring the memory of the servers
-------------------------------------
#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=6
MESSAGE=""

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1 )
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MESSAGE+="$FOLDER is more than $DISK_THRESHOLD, Current usage: $USAGE \n"
    fi
done <<< $DISK_USAGE

echo -e "Message: $MESSAGE"

echo "$MESSAGE" | mail -s "Disk Usage Alert" info@joindevops.com

# echo "body" | mail -s "subject" to-address


How can setup gmail 
===================
switch to root user
-----------------
sudo -i
Install Postfix, the SASL authentication framework, and mailx
---------------------------------------------------------------
yum -y install postfix cyrus-sasl-plain mailx

Restart Postfix to detect the SASL framework.
----------------------------------------------
systemctl restart postfix 

Start Postfix on boot
-------------------
systemctl enable postfix 

Open the /etc/postfix/main.cf file
--------------------------------------
vim /etc/postfix/main.cf 

append the following into the file at the end

relayhost = [smtp.gmail.com]:587
smtp_use_tls = yes
smtp_sasl_auth_enable = yes
smtp_sasl_password_maps = hash:/etc/postfix/sasl_passwd
smtp_sasl_security_options = noanonymous
smtp_sasl_tls_security_options = noanonymous

Note: gmail domain name and port ---- [smtp.gmail.com]:587

from user ---- they have to login 
to user 

Configure Postfix SASL Credentials
-----------------------------------
Add the Gmail credentials for authentication. Create a "/etc/postfix/sasl_passwd" file

touch /etc/postfix/sasl_passwd  

Add the following line to the file:

vim /etc/postfix/sasl_passwd

[smtp.gmail.com]:587 xyz:AppPassword

xyz its means your gmail 

[smtp.gmail.com]:587 nagendraparuchuri30@gmail.com:AppPassword

Note: xyz is from xyz@gmail.com, password_app is from google management app password

gxcajocmxzyamalu

[smtp.gmail.com]:587 nagendraparuchuri30@gmail.com:gxcajocmxzyamalu

How to setup AppPassword
----------------------
Login your mail, after that goto 2 step verification and enable

after that search AppPassword 
and create user-name and password

Create a Postfix lookup table from the sasl_passwd text file by running the following command:

postmap /etc/postfix/sasl_passwd 

systemctl restart postfix

Sending mail Run the following command to send mail:
----------------------------------------------------
echo "This is a test mail & Date $(date)" | mail -s "message" nagendrap0820@gmail.com



to check mail logs
-------------------
/var/log/maillog 


2. write a script to monitor  RAM memory and send alert mail 
---------------------------------------------------------





Disadvantages of shell script
==============================
1.no idempotency 
2.hard to understand the script 
3.single script may not work for all distros
4.no error handling 
5.shell scripting is tough if you have more servers 









