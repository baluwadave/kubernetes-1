#!/bin/bash
num=8
for i in 1 2 3 4 5 6 7 8 9 10
do
    if [[ $num -eq $i ]]
    then
            echo "$num is Found !!!"
            break
    fi        
    echo "Number is $i"
done    