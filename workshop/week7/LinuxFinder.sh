#!/bin/bash

read -p "input the file you want to see: " file
sed -e '/Linux/i\The next line contains the word Linux!' $file