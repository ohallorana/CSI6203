#!/bin/bash
read -p "Type the name of the Folder you would like to Copy: " folderName
# if the name is a valid directory
if [ -d "$folderName" ]; then
    #copy it to a new location
    read -p "type the name of the destination folder: " newFolderName
    cp -r "$folderName" "$newFolderName"
else
    # otherwise print an error
    echo "I couldn't find that folder"
fi