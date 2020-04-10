#!bin/bash
#case statement to dentermine scrip to run

read -p "Type any number to proceed: " sel

case $i in
    "1")
        echo "Create a Folder Script is Lunching"
        sh ./Foldermarker.sh;;

    "2")
        echo "List Files in a folder is Lunching"
        sh ./Folderlister.sh;;

    "3")
        echo "Copy a Folder Script is Lunching"
        sh ./Foldercopier.sh;;
    "4")
        echo "Save a Password Script is Lunching"
        sh ./Saverpassword.sh;;
    "5")
        echo "Read a Password Script is Lunching"
        sh ./findsecret1.sh;;
    "6")
        echo "Print Newest File Script is Lunching"
        sh ./findnewest.sh
        ;;
    *)  
        echo "Invalid input please try again";;
esac

exit 0