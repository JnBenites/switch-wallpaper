#!/bin/bash

#This script allows you to switch between two different wallpapers and was designed for use with sxhkd.
#To use this script you need to have feh installed and two images called wallpaper1 and wallpaper2.

#Define the location of the wallpapers and their extension.

#wallpaper folder
image_location=$HOME/.config/bspwm

#image extension
image_extension=png

#check if feh is installed
if [ "$(which feh)" = "/usr/bin/feh" ]
then
    #Check for existence of wallpaper 1 and wallpaper 2
    if [ -f $image_location/wallpaper1.$image_extension ] && [ -f$image_location/wallpaper2.$image_extension ]
    then
        #rename images
        mv $image_location/wallpaper1.$image_extension  $image_location/wallpaper1.$image_extension.temp
        mv $image_location/wallpaper2.$image_extension  $image_location/wallpaper1.$image_extension
        mv $image_location/wallpaper1.$image_extension.temp  $image_location/wallpaper2.$image_extension

        #refresh new background
        feh --bg-fill --randomize $image_location/wallpaper1.$image_extension

        echo "Wallpaper changed"
    else
        echo "Does not meet the requirements"
    fi
else
    echo "feh is not installed"
fi
exit
