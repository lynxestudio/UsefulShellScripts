#!/bin/sh

# Script for renaming all files in a given path to Uppercase

if test $# -eq 0
	then echo "usage: convertLower2Upper [folder PATH]"
	exit 2
else
	find $1 -maxdepth 1 -type f -print | tr [a-z] [A-Z]
fi
