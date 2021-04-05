#!/bin/bash -x
isAbsent=0
wagePerHr=20
fullDayHr=8
empCheck=$((RANDOM%2))
if [ $empCheck -eq 0 ]
then
	echo "Absent"
else
	echo "present"
	empDailyWages=$(($wagePerHr*$fullDayHr))
fi
