#!/bin/bash

download()
{
    read -p "enter the ULR the website you want to download: " URL
    read -p "enter the folder you want to save it: " folder
    cd $folder
    wget $URL
}

getNumber()
{
     read -p "$1: "
     while (( $REPLY < $2 || $REPLY > $3 )) ; do
          printError "Input must be between $2 and $3"
          read -p "$1: "
     done
}

printError()
{
     echo -e "\033[31mERROR:\033[0m $1"
}

genNumber()
{
    read -p "$1: "
    while (( $REPLY > 100 )) ; do
        printError "Input number between 1 to 100"
        read -p "$1: "
    done    
    while (( $REPLY < $2 )) ; do
        printError "Too Low!"
        read -p "$1: "
    done
    while (( $REPLY > $2 )) ; do
        printError "Too High!"
        read -p "$1: "
    done
    echo "Correct!"
}

calculator()
{
    read -p "enter base of triangle: " base
    read -p "enter height of triangle: " height
    echo "The area for a triangle with base: $base and height: $height is: $(( $base * $height / 2 ))"
}

black='\033[30m'
red='\033[31m'
blue='\033[34m'
green='\033[32m'
cyan='\033[36m'
purple='\033[35m'
brown='\033[33m'
clear='\033[0m'


if [ -z "$1" ] ; then 
    echo -e """${green}1. calculate triangle${clear}
${blue}2. download${clear}
${cyan}3. printerror${clear}
${brown}4. playguessing${clear}
${red}5. exit${clear}"""
    read -p "Please input your option: " option
    case $option in
        1)
            calculator ;;
        2)
            download ;;
        3)
            echo "this is the start of the script"

            getNumber "please type a number between 1 and 10" 1 10
            echo "Thank you!"
            getNumber "please type a number between 50 and 100" 50 100
            echo "Thank you!" ;;
        4)
            genNumber "guess a number between 1 and 100" $(( 1 + $RANDOM % 100 + 1 ))
            echo "Thank you!" ;;
        5)
            exit 0 ;;
        *)
            echo "ERROR! invalid option. "
    esac
else
    case $1 in
        1)
            calculator ;;
        2)
            download ;;
        3)
            echo "this is the start of the script"

            getNumber "please type a number between 1 and 10" 1 10
            echo "Thank you!"
            getNumber "please type a number between 50 and 100" 50 100
            echo "Thank you!" ;;
        4)
            genNumber "guess a number between 1 and 100" $(( 1 + $RANDOM % 100 + 1 ))
            echo "Thank you!" ;;
        5)
            exit 0 ;;
        *)
            echo "ERROR! invalid option. "
    esac
fi
