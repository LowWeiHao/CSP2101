#!/bin/bash
read -p "enter folder Name:" folderName
#know what folder user want to create file
read -p "enter the password:" secretPassword
#know what password user want
read -p "enter file name: " filename
#ask which file user want to store password
cd $folderName
#go to target folder
echo $secretPassword > $filename
#create txt file that store password