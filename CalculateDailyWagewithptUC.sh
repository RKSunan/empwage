#! /bin/bash
for i in $(seq 1 20)
do
day[$i]=$((RANDOM %2))
if [ ${day[$i]} == 1 ]
then
        full[$i]=$((RANDOM%2))
#        echo "$i day : employee Present"
        if [ ${full[i]} == 1 ]
                then
 #               echo "worked fulltime"
                wage[i]=`expr 8  \* 20  `
 #               echo "Daily wage : ${wage[i]}"
        elif [ ${full[i]} == 0 ]
        then
  #              echo "work part-time"
                wage[i]=`expr 4 \* 20 `
   #             echo "Daily wage : ${wage[i]}"
        fi
else
        full[$i]=0
        wage[$i]=0
#        echo "$i day : employee Absent"
#       echo "Daily wage : ${wage[i]} "

fi
done
echo "day  daily_wage"
num=0
for i in ${!wage[@]}
do
        echo "$i    ${wage[$i]}"
done


