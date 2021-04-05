#!/bin/bash -x
partTimePresent=2
fullTimePresent=1
wagePerHr=20
workingDaysPerMonth=20
fullDayHr=8
partTimeHr=4
empCheck=$((RANDOM%3))

case $empCheck in
	$fullTimePresent)
		fullDayHr=8
		empDailyWages=$(($fullDayHr*$wagePerHr*$workingDaysPerMonth))
		;;
	$partTimePresent)
		partTimeHr=4
		empDailyWages=$(($partTimeHr*$wagePerHr*$workingDaysPerMonth))
		;;
	*)
		echo "absent: no salary"
		;;
esac
