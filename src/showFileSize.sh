# !/bin/sh

# Displays the size of the files of a given path in descending order 
# from a given size in a folder path
if test $# -eq 0
    then echo "Usage: $0 [folder path]"
    exit 2
else
    folderPath=$1
    du -ls $folderPath/* | awk '{ print ($1 / 1024) " MB\t" $2}' | sort -rn
fi
