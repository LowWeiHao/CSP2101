#!/bin/bash
#Student Name: Low Wei Hao
#Student ID: 10522673

sed '{s/ /, /
s/,,/,/
s/Rec/Name: Rec/
s/, /: Height: /
s/, /: Width: /
s/, /: Area:/
s/ Area:[[:digit:]]*/ /
s/, /Colour: /}' Rectangle.txt 