#! /bin/bash
for i in $(seq 1 20)
do
day[$i]=$((RANDOM %2))
if [ ${day[$i]} == 1 ]
then
        full[$i]=$((RANDOM%2))
        if [ ${full[i]} == 1 ]
                then
                wage[i]=`expr 8  \* 20  `
        elif [ ${full[i]} == 0 ]
        then
                wage[i]=`expr 4 \* 20 `
        fi
else
        full[$i]=0
        wage[$i]=0

fi
done
echo "day  daily_wage"
num=0
for i in ${!wage[@]}
do
        echo "$i    ${wage[$i]}"
done


