#!/bin/bash
[[ -e imgs.txt ]] || [[ -s imgs.txt ]] || curl https://www.ecu.edu.au/service-centres/MACSC/gallery/gallery.php?folder=152 | grep -o -e 'http[^"]*\.jpg' > imgs.txt | sort -u imgs.txt

downloadOne()
{
    read -p "please select the images you want with enter last 4 digit of it: " digit
    wget - https://secure.ecu.edu.au/service-centres/MACSC/gallery/152/DSC0$digit.jpg
}

downloadALL()
{
    wget -i imgs.txt
}
downloadRange()
{
    read -p "please enter the 1st images in your range: " start
    read -p "please enter the last images in your range: " end
    let end+=1
    while (( $start < $end )) ; do
    wget - https://secure.ecu.edu.au/service-centres/MACSC/gallery/152/DSC0$start.jpg
    let start+=1
    done
}

downloadRandom()
{
    read -p "enter the number of image you want: " numbers
    shuf -n $numbers imgs.txt > chosen.txt
    wget -i chosen.txt
}

echo """1)1)Download a specific images
2)Download ALL images
3)Download images in a range
4)Download a specified number of images"""
read -p "input your option: " option

case $option in
    1)
        downloadOne ;;
    2)
        downloadALL ;;
    3)
        downloadRange ;;
    4)
        downloadRandom ;;
    *)
        echo "ERROR, INVALID OPTION!!" ;;
esac