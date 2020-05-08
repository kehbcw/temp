#kerry Houlihan

#this script will gets two integers from the user and determines the greatest common denominator

#!/bin/bash

echo Calculating the greatest common dividor between 1-1000.
echo Enter the first integer
read  number1

if ((  $number1<1 || $number1>1000 ))
then 
  echo Invalid input. Terminating Program
fi

echo Please enter the second integer
read number2

if (( $number2<1 || $number2>1000 ))
then 
  echo Invalid Input. Terminating Program.
fi

declare -i t

while (($number2!=0))
do 
  let t=$number2
  let number2=$number1%$number2
  let number1=$t
done

echo Greatest Common Dividor of "$number1"


