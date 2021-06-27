#!/bin/bash -x
echo "Welcome to Filpcoin simulation"
headcount=0
tailcount=0
max_won=21

while [ $headcount -lt $max_won -a $tailcount -lt $max_won ]

do
	random=$((RANDOM%2))
	if [ $random -eq 1 ]
	then
		((headcount++))
	else
		((tailcount++))
	fi
done

if [ $headcount -eq $max_won ]
then
	woncount=$((headcount-tailcount))
	echo "head won."
	echo "head won by $woncount points."
else
	woncount=$((tailcount-headcount))
	echo "tail won."
	echo "tail won by $woncount points."
fi

