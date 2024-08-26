# !/bin/sh

# Script to create an ISO image from a folder
# $1 = ISO name
# $2 = Folder path

if test $# -eq 0 
	then echo "Usage: $0 [iso name][folder name]"
	exit 2;
else
	mkisofs -r -o $1 $2
	echo "============================"
	echo "Image Done!"
fi
