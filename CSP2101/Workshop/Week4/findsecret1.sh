#!/bin/bash

# Find all files tghat match user input within the Directory structure from
    # the CSP2101 directory downwards

#COMMANDS/FEATURES - read, for loop, find, woldcard, chec k file status

read -p 'Enter the name of part name of the file your looking for: ' reqfile

# we call the find command. state the directory it will start in
# you want to be state the property you want to compare being the name
# you then state the serch criteria. The \* is a wildcard anything after
# input is to be inlcuded like file extentions .sh
for i in $( find ~/CSP2101 -name $reqfile\* ) ; do
        # -s means that it will check if a file exsists and if its
        # blank or not.
        #cat prints the content of the file to the screen
    if [ -s "$i" ]; then
        echo "The content of $i are as follows:"
        cat $i
     else
        echo "The $i file is empty"
    fi

done