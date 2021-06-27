#!/bin/bash -x
echo "Welcome to Filpcoin simulation"
random=$((RANDOM%2))
if [ $random -eq 1 ]
then
	echo "heads"
else
	echo "tails"
fi
