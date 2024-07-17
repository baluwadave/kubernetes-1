#!/bin/bash
num1=$(read -p "enter num1 value")
num1=$(read -p "enter num2 value")

addition(){
        # local num1=$1
        # local num2=$2
        let sum=$num1+$num2
    echo "Sum of $num1 and $num2 is $sum"    
}
