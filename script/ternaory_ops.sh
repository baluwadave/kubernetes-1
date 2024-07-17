#!/bin/bash 
#conditional statement in one line 
# cond1 && cond2 || cond3

age=15
[[ $age -ge 18 ]] && echo "Adult"  || echo "Minor"
