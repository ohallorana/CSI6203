#!/bin/bash

# Compare three (3) files passed as parameters when the script is run
    # if <3 arguments passed to script, advise user andterminate script
    # If all arguments are file,  determine which file is the newest

# TEST 1: ./findnewest.sh calc_rect_area.sh sspw.sh secret.txt
# TEST 2: ./findnewest.sh calc_rect_area.sh 216 secret.txt

if ! [ $# - eq 3 ]; then
    echo "Incorrect number of arrguments provided. Exiting script."
    exit 1
fi

filecnt=0
newestfile=""

for i; do
# the -f tests to see if the entry is a file
    if [[ -f $i ]]; then
        (( filecnt++)) #increment file counter variable
        echo "$i is a file"

        if [[ $filecnt < 1 ]]; then #if the filecnt is the first one
            newestfile=$i           #just assign the value of $i to it
        else
            if [[ $i -nt $newestfile]]; then #if what is now in $i is
                newestfile=$i                #newer then (-nt) update the variable
            fi

        fi
    else
        echo "$i is not a file"
    fi


done

echo "File count is set to $filecnt"
echo "Arguments passed is set to $#"

if [[ (( $filecnt -eq $# ))]]; then # $# is the default for storing the number of peramiters passed
    echo "The newest file is $newestfile"
else
    echo "Insufficient files for comparison"
fi

exit 0