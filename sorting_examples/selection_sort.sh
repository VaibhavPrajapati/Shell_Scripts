foo=(10 23 34 1 32 45)
length=${#foo[@]}
for (( i = 0; i <=$length; i++ ))      ### Outer for loop ###
do
    min_index=$i	
    for (( j = `expr $i+1` ; j <=$length; j++ )) ### Inner for loop ###
    do
          if [[ ${foo[$j]} -lt  ${foo[$i]} ]];
	  then
		  min_index=$j
	  fi
	  tmp=${foo[$min_index]}
	  foo[$min_index]=${foo[$i]}
	  foo[$i]=$tmp
    done
  echo "${foo[$i]}"
done

