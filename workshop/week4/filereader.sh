#!/bin/bash
read -p "type in the file you want to read: " fileName
#ask user which file need to be read
cat "$fileName" || echo "Failed to read file"
#read the file or print error