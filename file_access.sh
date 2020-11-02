#DTL Assignment - File access
#MIS : 111903095
#Name : Shalaka Pawar
#Div : 2

#!/bin/bash

file="C:\Users\Shalaka\Desktop\Study\SY\DTL\csv.sh"

if [ -r $file ]
then
	echo "File has read access"
else
	echo "File does not have read access"
fi

if [ -w $file ]
then
	echo "File has write permission"
else
	echo "File does not have write permission"
fi

if [ -x $file ]
then
	echo "File has execute permission"
else
	echo "File does not have execute permisiion"
fi

if [ -f $file ]
then
	echo "File is an ordinary file"
else
	echo "It is a special file"
fi

if [ -d $file ]
then
	echo "File is a directory"
else
	echo "It is not a directory"
fi

if [ -s $file ]
then
	echo "File size is not zero"
else
	echo "File size is zero"
fi

if [ -e $file ]
then
	echo "File exists"
else
	echo "File does not exist"
fi
