#!/bin/bash -x
day=0
hr=0
fullTimeHrs=8
partTimeHrs=4
workday=1
perHrWage=20
while [ $hr != 100 -o $day != 20 ]
do
empCheck=$((RANDOM%3))
if [ $empCheck -eq 1 ]
then
	echo "full time present"
	hr=$(($hr+$fullTimeHrs))
	day=$(($day+$workday))
	if [ $hr -eq 100 ]
	then
		break
	elif [ $day -eq 20 ]
	then
		break
	fi

elif [ $empCheck -eq 2 ]
then
        echo "part time present"
        hr=$(($hr+$partTimeHrs))
        day=$(($day+$workday))
        if [ $hr -eq 100 ]
        then
                break
	elif [ $day -eq 20 ]
	then 
		break
        fi

else
	echo "absent"
        day=$(($day+$workday))
        if [ $hr -eq 100 ]
        then
                break
	elif [ $day -eq 20 ]
	then
		break
        fi
fi
done
wages=$(($perHrWage*$hr))
