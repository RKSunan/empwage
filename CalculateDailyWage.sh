#! /bin/bash
for i in $(seq 1 20)
do
day[$i]=$((RANDOM %2))
if [ ${day[$i]} == 1 ]
then
                wage[$i]=`expr 8  \* 20  `
 #               echo "Daily wage : ${wage[i]}"
else
        wage[$i]=0
fi
done
echo "day  daily_wage"
num=0
for i in ${!wage[@]}
do
        echo "$i      ${wage[$i]}"
done

