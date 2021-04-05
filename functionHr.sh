#!/bin/bash -x
function workHr()
{
        workingDays=$1
        hr=0
	day=1
        fullTimeHr=8
	partTimeHr=4
	wagePerHr=20
        for ((i=1; i<=workingDays; i++))
        do
        empCheck=$((RANDOM%3))
        if [ $empCheck -eq 1 ]
        then
                echo "employee full time present"
		todayWage=$(($wagePerHr*$fullTimeHr))
		day=$day
		((day++))
                hr=$(($hr+$fullTimeHr))
		wagesTillDay=$(($hr*$wagePerHr))

        elif [ $empCheck -eq 2 ]
        then
                echo "employee part time present"
		todayWages=$(($wagePerHr*$partTimeHr))
		day=$day
		((day++))
                hr=$(($hr+$partTimeHr))
		wagesTillDay=$(($hr*$wagePerHr))
        else
                echo "employee absent"
        fi
        done
	totalWages=$(($hr*$wagePerHr))
}
workHr 20
