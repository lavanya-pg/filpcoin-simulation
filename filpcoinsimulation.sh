#!/bin/bash -x
echo "Welcome to Filpcoin simulation"
read -p "how much times you want to toss the coin: " num
headcount=0
tailcount=0
for((i=1;i<=$num;i++))
do

	random=$((RANDOM%2))
	if [ $random -eq 1 ]
	then
		((headcount++))
	else
		((tailcount++))
	fi
done

echo "head won $headcount times"
echo "tail won $tailcount times"
