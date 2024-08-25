# !/bin/sh

#Shell for counting files of a given path.
# ls -l prints the files with a '-' at the begining of the file.

echo "Found `ls -l $1 | awk '/^-/ { print $1 }' | wc -l` files."
