#!/bin/sh
echo "descomprimiendo zips...."
for archivo in *.zip
do
	na=$archivo
	echo "Descomprimiendo...." $na
	unzip $na
	sleep 2
done
