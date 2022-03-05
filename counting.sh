#!/bin/bash

########################################################################
### Counts up to a set number and reports x at each step, echoing a specific string if x is the number 0 ###
########################################################################

x=0
count=0

while (( $count < 10 )); do
	if (( $x == 0 )); then
		echo "x is exactly 0!"
		((count++))
		x=$count
	else
		echo "$x"
		((count++))
		x=$count
	fi
done
