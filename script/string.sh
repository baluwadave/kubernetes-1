#!/bin/bash
My_Var="Hey Buddy How are you?"


My_Var_Length=${#My_Var}
echo "Length of the My_Var is $My_Var_Length"

echo "Upper case is -------${My_Var^^}"

echo "Lower case is -------${My_Var,,}"

#To replace the string 
New_Var=${My_Var/Buddy/Balu}
echo "New Var is ---- $New_Var"