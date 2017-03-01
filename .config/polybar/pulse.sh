#!/bin/bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally
icon0=""
icon1=""
icon2=""

mute=0
vol1=50

vol=$(pulsemixer --get-volume | awk '{print $1;}')

# OPTIONAL: Append ' ${temp}K' after $icon
if (($vol == $mute)) 
then
    echo " $vol%"  
elif (($vol < $vol1))
then
    echo " $vol%"  
else
	echo " $vol%"
fi
