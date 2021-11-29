#!/bin/sh

echo "Enter ANumber :"
read n

n=$((n-2))
a=0
b=1

echo "$a"
echo "$b"

while [ $n -gt 0 ]
do
 temp=$b
 b=$((a+b))
 a=$temp
 echo "$b"
 n=$((n-1))
done 
