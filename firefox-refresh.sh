#!/bin/bash

CURRENT_WID=$(xdotool getwindowfocus)
FIREFOX_WID=$(xdotool search --name "Mozilla Firefox")

for WID in $FIREFOX_WID; do 
    echo "$WID"
done
xdotool windowactivate $WID
xdotool key F5

xdotool windowactivate $CURRENT_WID
