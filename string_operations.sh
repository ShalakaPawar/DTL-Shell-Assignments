#DTL Assignment - String operations
#MIS : 111903095
#Name: Shalaka Pawar
#Div: 2 ( S1 batch )

#!/bin/bash

echo "-------------------- Menu ---------------------"

echo "1. Compare two strings"
echo "2. Concatenate two strings"
echo "3. Length of the string"
echo "4. Occurence of character"
echo "5. Reverse of string"
echo "6. Quit"

while true
do
	echo -e "\n---------------------------------------------"

        echo -e "\nEnter your choice : "
        read choice

	echo -e "\nEnter first string : "
        read str1

	case $choice in
		1) echo  "Enter second string : "
		   read str2
		   if [ $str1 == $str2 ] 
		   then 
		   	echo $str1 " is equal to " $str2
		   else
			echo $str1 " is not equal to " $str2
		   fi
		;;

		2) echo "Enter second string : "
		   read str2
		   echo "After concatenation : "$str1$str2
		;;

		3) echo "Length of the string : "${#str1}

		;;

		4) echo "Enter a charachter : "
		   read char
		   num=$(echo "${str1}" | awk -F"${char}" '{print NF-1}')
		   echo $char "occurs" ${num} "times"
		;;

		5) echo "Reverse String is:" 
		   echo $str1 | rev
		;;

		6) echo "Quitting . . ."
		   exit 0
		;;

		*) echo -e "\nError: Invalid option..."	
	           read -p "Press [Enter] key to continue..." readEnterKey
		;;

	esac
done
