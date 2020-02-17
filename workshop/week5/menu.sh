#!/bin/bash
read -p """1. Create a folder 
2. List files in a folder
3. Copy a folder
4. Save a passwork
5. Read a password
6. Print newest file

Type any number to proceed: """ option

case $option in
    1)
        ./foldermaker.sh ;;
    2)
        ./folderlister.sh ;;
    3)
        ./foldercopier.sh ;;
    4)
        ./savePassword.sh ;;
    5)
        ./filereader.sh ;;
    6)
        read -p "enter first file you want to check: " file1
        read -p "enter second file you want to check: " file2
        read -p "enter third file you want to check: " file3
        ./filechecker.sh $file1 $file2 $file3 ;;
    *)
        echo "unknown option" ;;
esac
exit 0