#!/bin/bash

########################################################################
### Prints the disk usage of each file in the current directory ###
########################################################################

for i in *
do
	echo "$(du $i)"
	sleep 5
done
