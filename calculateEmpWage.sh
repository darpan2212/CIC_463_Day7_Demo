#!/bin/bash

PRESENT=1;
PART_TIME=2;

WAGE_PER_HOUR=20;
MAX_WORKING_DAY=20;
MAX_WORKING_HOUR=40;

function getWorkingHour() {

	case $1 in
		$PRESENT)
			workingHour=8;
		;;

		$PART_TIME)
			workingHour=4;
		;;

		*)
			workingHour=0;
		;;
	esac;
	echo $workingHour;

}

totalWorkingHour=0;
day=0;

while [[ $day -lt $MAX_WORKING_DAY && $((totalWorkingHour+4)) -lt $MAX_WORKING_HOUR ]]
do
	wH=$(getWorkingHour $((RANDOM%3)));
	dailyWage[((day++))]=$((WAGE_PER_HOUR * wH));
	totalWorkingHour=$((totalWorkingHour + wH));
done

totalWage=$((totalWorkingHour * WAGE_PER_HOUR));

echo "Employee monthly wage : $"$totalWage "USD (Total working hour : $totalWorkingHour)";
echo "Total day : $day";

echo ${dailyWage[@]};


for ((i=0;i<${#dailyWage[@]};i++))
do
	echo "Day $((i+1)) : " ${dailyWage[i]};
done
