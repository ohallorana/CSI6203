#!/bin/bash

# Name: Anthony O'Halloran
# Student num: 10020715

# generate Random Number between 20 - 70 and 
# assign to variable rand_num

floor=20;
ceiling=70;
range=$(($ceiling-$floor+1));
rand_num=$RANDOM;
let "rand_num %= $range";
rand_num=$(($rand_num+$floor));


#Prompt the User to Enter a Guess and save to variable usrguess

read -p "Please Enter your Guess for the Age between 20 - 70: " usrguess

# If statement to test user input agaist random generated number

# Test is to check if entry is less then generated number
# and that the user has entred an age above or equal to 20
# if true echo hint to user guess was too low
if [ $usrguess -lt $rand_num ] && [ $usrguess -ge $floor ]; then
    echo "Your guess was too Low!"

# Test to check if entry is higher then generated number
# and that user has entered an age below or equal to 70
# if true echo hint to user guess was too high
elif [ $usrguess -gt $rand_num ] && [ $usrguess -le $ceiling ]; then
    echo "Your guess was too High!"

# Test to check if user entry is the same as random generated number
# If the values match  promopt the user they got it correct
elif [ $usrguess -eq $rand_num ]; then
    echo "You guessed the right Age!"

# If none of the above arugents are true prompt the user they entered
# an invalid entry and to try again
else
    echo "Your Input needs to be between 20 - 70 please try again"

fi

# exit script at completion to terminate
exit 0
