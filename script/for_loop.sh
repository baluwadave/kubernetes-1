# !/bin/bash

# for  i in {1..20}
# do 
#         echo "Number is $i"
# done        

FILE="/d/kubernetes-1/kubernetes-1/script/name.txt"
for name in $(cat $FILE)
do      
        echo "Name is $name"
done        