#!/bin/sh
#shell para matar procesos
for PID in `ps -u $USER | grep "$programa" | awk '{ print $1}'`;
do
	kill -9 -$PID
done