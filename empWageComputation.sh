#!/bin/bash -x
partTimePresent=2
fullTimePresent=1
wagePerHr=20
workingDaysPerMonth=20
empCheck=$((RANDOM%3))

case $empCheck in
	$fullTimePresent)
		fullDayHr=8
		empDailyWages=$(($fullDayHr*$wagePerHr*$workingDaysPerMonth))
		;;
	$partTimePresent)
		partTimeHr=8
		empDailyWages=$(($partTimeHr*$wagePerHr*$workingDaysPerMonth))
		;;
	*)
		echo "absent: no salary"
		;;
esac
