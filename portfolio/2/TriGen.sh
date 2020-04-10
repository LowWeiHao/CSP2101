#!/bin/bash
#Student Name: Low Wei Hao
#Student ID: 10522673

count=0
num=0
colour=("red" "black" "blue" "yellow" "green" "grey" "purple")
blank=("," " ")

while [[ $count -lt 100 ]] ; do
    let count=count+1
    let num=num+1
    height=$(( 1 + $RANDOM % 100 + 1))
    width=$(( 1 + $RANDOM % 100 + 1))
    echo "Rec$num${blank[$RANDOM % ${#blank[@]}]} $height, $width, $(($height * $width)), ${colour[$RANDOM % ${#colour[@]}]}" >> Rectangle.txt
done