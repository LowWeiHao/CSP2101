#!/bin/bash
read -p "enter folder Name:" folderName
#know what folder user want to create file
read -p "enter the password:" secretPassword
#know what password user want
cd $folderName
#go to target folder
echo $secretPassword > secret.txt
#create txt file that store password