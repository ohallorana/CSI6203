# The below line states we are going to execute in bash
#!/bin/bash

#this line assigns a File path to a variable
rtdir=~/CSP2101/Workshop/Week3

#The below line prompts the User to Enter a Name for a Folder
read -p "Type the name of the folder you would like to create" folderName

#The below line makes the folder stored in varaible folderName
mkdir "$folderName"

#This line displays the contents of the Week3 Folder.
echo "Contents of Folder $rtdir"
ls $rtdir