#!/bin/bash
My_Array=(1 20 30.5 Hello "Hello buddys")
#printing all array element
echo "print the full array ${My_Array[*]}"

#accessing array element 

echo "print the 3 element of array ${My_Array[3]}"

#finding the length of array
echo "length of an array ${#My_Array[*]}"

#updating array element
My_Array+=(5 6 10)
echo "print updated array: ${My_Array[*]}"