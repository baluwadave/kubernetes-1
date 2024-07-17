echo "Hey Choose the option"
echo "a = To see the current date"
echo "b =  list all files in current directory"


read choice 
# it is choice of the multiple o/p?
case $choice in 
        a) date;;
        b) ls;;
        *) echo "Non Valid Input"
esac        