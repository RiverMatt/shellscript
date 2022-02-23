#!/bin/zsh
set -x

for i in $(cat < "$1"); do
	konsole -e ssh $i &
done
