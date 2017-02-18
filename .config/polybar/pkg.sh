#!/bin/bash 

Update=$(checkupdates | cut -d " " -f1 | wc -l)
Aur=$(checkupdates-aur | cut -d " " -f1 | wc -l)

echo -e " $Update/$Aur"