#!/bin/bash
#Student Name: Low Wei Hao
#Student ID: 10522673

printError()
{
     echo -e "\033[31mERROR:\033[0m $1"
}

getNumber()
{   
    read -p "$1: "
    while [[ $REPLY -lt $2 ]] ; do
        printError "Too Low!"
        read -p "$1: "
    done
    while [[ $REPLY -gt $2 ]] ; do
        printError "Too High!"
        read -p "$1: "
    done
    echo "Right!"
}

getNumber "guess age!" $(( 20 + $RANDOM % 80 + 1 ))
echo "Thank you!"