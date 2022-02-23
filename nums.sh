#!/bin/bash

for i in *
do
	echo "$(du $i)"
	sleep 5
done
