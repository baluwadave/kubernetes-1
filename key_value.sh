# #!/bin/bash
# declare -A My_Array 
# My_Array = (
#     [name]="Balu"
#      [age]=28 
#      [city]="Pune"
#       )

# echo "my name is ${My_Array[name]} "
# echo "and my age is ${My_Array[age]} "
# echo "and living in ${My_Array[city]} city"


#!/bin/bash

# Declare the associative array
declare -A My_Array

# Initialize the array elements
My_Array=(
    [name]="Balu"
    [age]=28
    [city]="Pune"
)

# Access and print the elements of the array
echo "My name is ${My_Array[name]}"
echo "And my age is ${My_Array[age]}"
echo "And living in ${My_Array[city]} city"
