#!/bin/bash -x
function workHr()
{
        workingDays=$1
        hr=0
        dailyhr=8
        for ((i=1; i<=workingDays; i++))
        do
        empCheck=$((RANDOM%3))
        if [ $empCheck -eq 1 ]
        then
                echo "employee present"
                hr=$(($hr+$dailyhr))

        elif [ $empCheck -eq 2 ]
        then
                echo "employee part time present"
                hr=$(($hr+$dailyhr))
        else
                echo "employee absent"
        fi
        done
        echo $hr
}
workHr 20
