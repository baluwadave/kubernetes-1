#!/bin/bash
declare -A My_Array 
My_Array = ([name]=Balu [age]=28 [city]=Pune )

echo "my name is ${My_Array[name]} "
echo "and my age is ${My_Array[age]} "
echo "and living in ${My_Array[city]} city"