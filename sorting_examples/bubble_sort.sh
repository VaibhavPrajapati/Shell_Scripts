arr=(10 23 34 1 32 45)
length=${#arr[@]} 
while :
do
	swap=0
	for(( i = 0; i <  `expr $length-1`; i++))
	do
		next=`expr $i+1`
		if [[ ${arr[$i]} -gt ${arr[$next]} ]];
		then
			swap=1
			tmp=${arr[$i]}
			arr[$i]=${arr[$next]}
			arr[$next]=$tmp
		fi
	done
	if [ $swap == 0 ];
	then
		echo ${arr[@]}
		exit 0
	fi
done

