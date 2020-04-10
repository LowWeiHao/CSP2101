#!/bin/bash

printError()
{
     echo -e "\033[31mERROR:\033[0m $1"
}

getNumber()
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
    echo "Right!"
}

getNumber "guess a number between 1 and 100" $(( 1 + $RANDOM % 100 + 1 ))
echo "Thank you!"