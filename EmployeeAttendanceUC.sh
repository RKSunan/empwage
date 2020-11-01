#! /bin/bash
echo "Day   Employee Attandence"
for i in $(seq 1 20)
do
day[$i]=$((RANDOM %2))
if [ ${day[$i]} == 1 ]
then
	echo " $i     Present"
else
	echo " $i     Absent"
fi
done
 
