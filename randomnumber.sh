#/bin/bash

number=$RANDOM
chance=1
for (( ; ; ))
do
read -p 'guess the number: ' guess
if [ $guess -eq $number ]
  then
	 echo "your guess is correct"
	 echo "$chance guess"
break
  else
	  echo "your guess is wrong"
	  echo "your $chance guess"
	  if [ $guess -ge $number ]
	  then
		  echo "guess lesser number than $guess"
	  else
		  echo "guess greater number than $guess"
	  fi
fi
chance=$((chance+1))
done
echo $number
