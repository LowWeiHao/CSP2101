#!/bin/bash
read -p "type the name of the folder you would like to create:" folderName
#ask user the name of folder that user want to make.
mkdir "$folderName"
#created folder with the name user type in.