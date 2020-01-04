#!/bin/bash

chosen=$(echo -e "screenshot\nselected area screenshot\nactive window screenshot\n[cancel]" | rofi -dmenu -lines 4 -width 11 -p "screenshot" -i)

if [[ $chosen = "screenshot" ]]; then
	sleep 1; scrot -e 'mv $f ~/screenshots'; notify-send 'screenshot saved!'
elif [[ $chosen = "selected area screenshot" ]]; then
	scrot -s -e 'mv $f ~/screenshots'; notify-send 'selected area screenshot saved!'
elif [[ $chosen = "active window screenshot" ]]; then
	sleep 1; scrot -u -e 'mv $f ~/screenshots'; notify-send 'active window screenshot saved!'
fi