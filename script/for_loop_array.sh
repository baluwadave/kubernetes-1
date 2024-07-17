#!/bin/bash 
My_Array=(1 2 3 Hello Hi)
length=${#My_Array[*]}


for (( i=0;i<length;i++ ))
do
        echo "value of array is ${My_Array[$i]}"
done        