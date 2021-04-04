#!/bin/bash -x
isAbsent=0
empCheck=$((RANDOM%2))
if [ $empCheck -eq 0 ]
then
	echo "Absent"
else
	echo "present"
fi
