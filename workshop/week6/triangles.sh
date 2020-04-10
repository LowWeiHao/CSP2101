#!/bin/bash

calculator()
{
    local area=$(( $base * $height / 2 ))
    echo "The area for a triangle with base: $base and height: $height area is: $area"
}

base=1
while (( $base <= 10 )) ; do
    height=1
    while (( $height <= 10 )) ; do
    calculator
    let "height++"
    done
height=1
let "base++"
done