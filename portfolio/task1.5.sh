#!/bin/bash
read -p "Name of the file: " FileName
#ask the file want to move.
read -p "Name of destination folder: " DFolderName
#ask the destination folder.
mv "$FileName" "$DFolderName"
#move the file to the destination folder.
