# The below line states we are going to execute in bash
#!/bin/bash

# The below line prompts the User to Enter a Name for a Folder
read -p "Type the name of the folder you would like to create" folderName

# The below line makes the folder stored in varaible folderName
mkdir "$folderName"

# The below line prompts the User to enter a password
read -p "Type the secret password you would like to create: " pwd

# The below line saves the password to a text file in the folder created
echo $pwd > $folderName/secret.txt

