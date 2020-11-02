#! /bin/bash
findHours(){
if [ $1 -le 20 ]
then
totalhour=0
for i in $(seq 1 $1)
        do
      day[$i]=$((RANDOM %2))
        if [ ${day[$i]} == 1 ]
        then
        full[$i]=$((RANDOM%2))
        if [ ${full[i]} == 1 ]
                then
		hr[i]=8
                wage[i]=`expr 8  \* 20  `
        elif [ ${full[i]} == 0 ]
        then
                wage[i]=`expr 4 \* 20 `
			hr[i]=4
        fi
        else
        full[$i]=0
        wage[$i]=0
	hr[$i]=0
        fi
done
echo "day    hour  Total_hour"
for i in ${!day[@]}
do
sum=$(( ${hr[$i]} + $totalhour ))
totalhour=$sum
echo "$i     ${hr[$i]}          $totalhour"
if [  $i -eq $1 ]
then
echo "The employee work ${hr[$i]} hr on $i day and total $totalhour hour"
fi
done
else
	echo "Invalid day"
fi
}
while :
do
echo "Enter a day"
read n
findHours $n
exit 1
done
