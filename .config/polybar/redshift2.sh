#!/bin/bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally

pgrep -x redshift &> /dev/null
if [[ $? -eq 0 ]]; then
	notify-send -t 6 --icon=info "RedShift" "Off"
  	redshift -x && killall redshift
else
	notify-send -t 6 --icon=info "RedShift" "On"
  	redshift >/dev/null 2>&1 & disown
fi