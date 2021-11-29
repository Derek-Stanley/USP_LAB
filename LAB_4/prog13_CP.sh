#!/bin/bash

#cie=()
#see=()
#total=()

echo "Enter marks for CIE and SEE "

for i in 0 1 2 3 4 5
do
 echo " Subject 1: "
 echo "CIE: "
 read cie[$i]
 echo "SEE: "
 read see[$i]
 total[$i]=$((cie[$i]+see[$i]))
done

echo "---GRADES---"
for i in 0 1 2 3 4 5
do
 echo "Subject $i: "
 if [ ${total[$i]} -gt 90 ]
 then
 echo "S"
 else
  if [ ${total[$i]} -gt 80 ]
  then
  echo "A"
  else
   if [ ${total[$i]} -gt 70 ]
   then
   echo "B"
   else
    if [ ${total[$i]} -gt 60 ]
    then
    echo "C"
    else
     if [ ${total[$i]} -gt 50 ]
     then
     echo "D"
     else
      if [ ${total[$i]} -gt 40 ]
      then
      echo "E"
      else
      echo "Fail"
      fi
     fi
    fi
   fi
  fi
 fi
done
