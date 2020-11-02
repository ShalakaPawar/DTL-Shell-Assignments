
#MIS : 111903095
#Name : Shalaka Pawar
#Div : 2 ( S1 Batch )

#Assignment 1 - Calculator

#!/bin/bash

echo "============== Menu ================"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

echo "Your choice: "
read choice

echo "Enter two numbers: "
read a
read b

case $choice in
	1)sum=$(( $a + $b ))
 	echo "Sum is: $sum"  
	;;

	2)subtract=$(( $a - $b ))
	echo "Subtraction of $a and $b = $subtract"
	;;

	3)product=$(( $a*$b ))
	echo "Multiplication of $a and $b = $product"

	;;

	4)division=$(( $a/$b ))
	echo "Division of $a and $b = $division"
	;;
esac
