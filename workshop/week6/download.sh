#!/bin/bash

download()
{
    read -p "enter the ULR the website you want to download: " URL
    read -p "enter the folder you want to save it: " folder
    cd $folder
    wget $URL
}

download