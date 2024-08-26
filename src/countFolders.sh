# !/bin/sh

#Shell for counting folders of a given path.

if test $# -eq 0
	then echo "Usage: $0 [PATH]"
	exit 2
else 
	echo "Found `ls -l $1 | awk '/^d/ { print $1 }' | wc -l` folders."
fi

