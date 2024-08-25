# !/bin/sh

#Shell for counting folders of a given path.

echo "Found `ls -l $1 | awk '/^d/ { print $1 }' | wc -l` folders."
