#! /bin/bash
	hr=8
	hr2=4
	#hour[0]=0
	totalhour=0
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
		 hour[i]=$(( totalhour + hr ))
		 totalhour=${hour[$i]}
        elif [ ${full[i]} == 0 ]
        then
                wage[i]=`expr 4 \* 20 `
		  hour[i]=$(( totalhour + hr2 ))
                 totalhour=${hour[$i]}
        fi
        else
        full[$i]=0
        wage[$i]=0
	hour[$i]=$totalhour
        fi
	fi
        done
        echo "day  daily_wage  Total_wage    Total_Hour "
        num=0
        for i in ${!wage[@]}
        do
        sum=$(( $num + ${wage[$i]} ))
        num=$sum
        echo "$i      ${wage[$i]}              $num          ${hour[$i]}"
        done
        echo "The wage of the month is : $num"
	echo "The  total moth work in a month : $totalhour"

