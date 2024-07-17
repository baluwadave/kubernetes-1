#!/bin/bash
read -p "whcih site you want to check?  " site
ping -c 1 $site

if [[ $? -eq 0 ]]
then    
        echo " sucessfully connected to $site"
else
        echo "unble to connect $site"
fi