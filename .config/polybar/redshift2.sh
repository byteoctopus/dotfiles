#!/bin/bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally

pgrep -x redshift &> /dev/null
if [[ $? -eq 0 ]]; then
	exec systemctl --user stop redshift
else
	exec systemctl --user start redshift
fi