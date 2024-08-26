#! /bin/sh

#Shell to kill a running process
clear
echo "\t============================================="
echo "\tShell to terminate a running process"
echo "\t============================================"
echo "\t My running processes are:"
ps -fau $USER  | awk '{ if ($7 != "00:00:00") print "\t [ "$2 " - " $8 " ]" }'
echo "Choose the process Id: "
read processId
kill -9 $processId
echo "\t Done!"
