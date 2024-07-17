#!/bin/bash 
#AND operator 
read -p "what is your age:" age 
read  -p "your country : " country


if [[ $age -ge 18]] && [[ $country=="India"]]
then
        echo "you can vote "
else       
        echo "you are not eligbile for voting"        
fi