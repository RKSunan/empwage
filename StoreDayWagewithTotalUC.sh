#! /bin/bash
        sum=0
       echo "Day         Daily_wage       Total_wage"
        for i in $(seq 1 100)
        do
        if [[  $totalhour -lt 200  && $i -le 20 ]]
        then
        day[$i]=$((RANDOM %2))
        if [ ${day[$i]} == 1 ]
        then
        full[$i]=$((RANDOM%2))
        if [ ${full[i]} == 1 ]
                then
                wage[i]=`expr 8  \* 20  `
                 totalwage[i]=$(( ${wage[$i]} + $sum ))
                sum=${totalwage[$i]}
        elif [ ${full[i]} == 0 ]
        then
                wage[i]=`expr 4 \* 20 `
                   totalwage[i]=$(( ${wage[$i]} + $sum ))
                sum=${totalwage[$i]}
        fi
        else
        full[$i]=0
        wage[$i]=0
        totalwage[i]=$sum
        fi
        echo "$i           ${wage[$i]}              $sum"
        fi
 done

