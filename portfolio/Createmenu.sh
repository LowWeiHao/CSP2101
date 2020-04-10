#!/bin/bash

black='\033[30m'
red='\033[31m'
blue='\033[34m'
green='\033[32m'
cyan='\033[36m'
purple='\033[35m'
brown='\033[33m'
clear='\033[0m'


if [ -z "$1" ] ; then 
    echo -e """${green}1. Register User${clear}
${blue}2. Users Details${clear}
${cyan}3. Edit User${clear}
${brown}4. Save User${clear}
${red}5. Change Password${clear}
${purple}6. Print Report${clear}"""
    read -p "Please input your option: " option
    case $option in
        1)
            if [ -e "UserDetail.txt" ] ; then
                echo "User Registered"
            else
                ./UserRegister.sh 
            fi ;;
        2)
            ./UserDetail.sh ;;
        3)
            ./EditUser.sh ;;
        4)
            ./SaveUser.sh ;;
        5)
            ./ChangePassword.sh ;;
        6)
            ./PrintReport.sh ;;
        *)
            echo "ERROR! invalid option. "
    esac
else
    case $1 in
        1)
            if [ -e "UserDetail.txt" ] ; then
                echo "User Registered"
            else
                ./UserRegister.sh 
            fi ;;
        2)
            ./UserDetail.sh ;;
        3)
            ./EditUser.sh ;;
        4)
            ./SaveUser.sh ;;
        5)
            ./ChangePassword.sh ;;
        6)
            ./PrintReport.sh ;;
        *)
            echo "ERROR! invalid option. "
    esac
fi
