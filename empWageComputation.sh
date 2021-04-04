#!/bin/bash -x
isAbsent=0
fullTimePresent=1
wagePerHr=20
fullDayHr=8
partTimeHr=8
empCheck=$((RANDOM%3))
if [ $empCheck -eq 0 ]
then
	echo "Absent"
elif [ $empCheck -eq 1 ]
then
	echo "employee full time present"
	empDailyWages=$(($wagePerHr*$fullDayHr))
else
	echo "employee is part time present"
	empDailyWages=$(($wagePerHr*$partTimeHr))
fi
