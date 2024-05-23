<< comment
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
comment
#!/bin/bash

# Print user-related information
echo "User Information:"
echo "-----------------"
echo "Username: $LOGNAME"
echo "Home directory: $HOME"
echo "Current directory: $PWD"
echo "Previous directory: $OLDPWD"
echo "User ID: $UID"
echo "Effective User ID: $EUID"
echo "Shell: $SHELL"
echo "Login Shell Options: $SHELLOPTS"
echo "Groups: ${GROUPS[*]}"
echo "Glob Ignore: $GLOBIGNORE"
echo ""

# Print system-related information
echo "System Information:"
echo "-------------------"
echo "Terminal type: $TERM"
echo "Parent process ID: $PPID"
echo "OS Type: $OSTYPE"
echo "Machine Type: $MACHTYPE"
echo "Bash version: $BASH_VERSION"
echo "Bash path: $BASH"
echo "Path: $PATH"
echo "Hostname: $HOSTNAME"
echo "Host Type: $HOSTTYPE"
echo "Session Timeout: $TMOUT seconds"
echo "Elapsed Seconds Since Script Start: $SECONDS"
echo "Last Exit Status of the Most Recently Executed Foreground Pipeline: ${PIPESTATUS[*]}"

# End of script
