#!/bin/bash
if [ "$#" -ne 3 ] ; then
    echo "error! file amount not equal 3."
    exit 1
    #print error message when file amount not equal to 3
else
    P=$1
    if [ "$2" -nt "$1" ] ; then
    #check if second file new than first file
        P=$2
        if [ "$3" -nt "$2" ] ; then
        #chek if third file new than second file
            P=$3
            echo "$P"
        else
            echo "$P"
        fi
    elif [ "$3" -nt "$1" ] ; then
        P=$3
        echo "$P"
    else
        echo "$P"
    fi
fi