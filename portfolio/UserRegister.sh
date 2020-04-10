#!/bin/bash

echo "please provide your detail below"
read -p "Your Name: " Name
read -p "Date of Birth: " Date
read -p "Address: " Address
read -p "Favourite Colour: " Colour

display=$Colour

case $display in
    black)
        display='\033[30m' ;;
    red)
        display='\033[31m' ;;
    green)
        display='\033[32m' ;;
    brown)
        display='\033[33m' ;;
    blue)
        display='\033[34m' ;;
    purple)
        display='\033[35m' ;;
    cyan)
        display='\033[36m' ;;
    grey)
        display='\033[37m' ;;
    yellow)
        display='\033[1;33m' ;;
esac

echo """Name: $Name
Date of Birth: $Date
Address: $Address
Favourite Colour: $Colour""" > UserDetail.txt

echo -e """${display}Registered!
Name: $Name
Date of Birth: $Date
Address: $Address
Favourite Colour: $Colour
${clear}"""