#!/bin/bash

blue='\033[34m'
green='\033[32m'
red='\033[31m'
purple='\033[35m'
clear='\033[0m'

case $2 in
    "+")
        echo -e "${blue}$(( $1 + $3 ))${clear}";;
    "-")
        echo -e "${green}$(( $1 - $3 ))${clear}";;
    "x")
        echo -e "${red}$(( $1 * $3 ))${clear}";;
    "/")
        echo -e "${purple}$(( $1 / $3 ))${clear}";;
esac