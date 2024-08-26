# !/bin/sh

## Shell to display word frequency in descend order.

if test $# -eq 0
	then echo "usage: $0 [filename]"
	exit 2
else
	tr -s '<SPACE>' '\012' < $1 | sort | uniq -c | sort -rn
fi
