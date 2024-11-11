#!/bin/sh

#Create backups of all directories of a given folder
if test $# -eq 0
    then echo "Usage: $0 [folder path]"
    exit 2
else

    cd $1
    for dir in `ls -F | grep /$`
    do
        DATE=`date +%F%H%M%S_%N`
        dirname=`basename $dir`
        backupFile="$DATE.$dirname.tar"
        echo
        echo "generating backup... $backupFile"
        tar -cvf $backupFile $dirname
        echo "======== Backup generated !!! ==========="
        echo
        sleep 1
        echo "Compressing backups..."
        gzip *.tar
        echo "Done !!!"
    done
fi