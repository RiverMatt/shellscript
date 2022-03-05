#!/bin/zsh

########################################################################
### Connects via ssh to all addresses passed in from a file in the first argument ###
#########################################################################

set -x

for i in $(cat < "$1"); do
	konsole -e ssh $i &
done
