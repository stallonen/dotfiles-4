#!/bin/bash

chosen=$(echo -e "screenshot\nselected area screenshot\ncopy screenshot to clipboard\nactive window screenshot\n[cancel]" | rofi -dmenu -lines 5 -width 14 -p "screenshot" -i)

if [[ $chosen = "screenshot" ]]; then
	sleep 1; scrot -e 'mv $f ~/screenshots'; notify-send '	screenshot saved!'
elif [[ $chosen = "selected area screenshot" ]]; then
	maim -s ~/screenshots/$(date "+%F-%H-%M-%S").png; notify-send '	selected area screenshot saved!'
elif [[ $chosen = "copy screenshot to clipboard" ]]; then
	maim -s | xclip -selection clipboard -t image/png; notify-send '	screenshot copied to clipboard'
elif [[ $chosen = "active window screenshot" ]]; then
	sleep 1; scrot -u -e 'mv $f ~/screenshots'; notify-send '	active window screenshot saved!'
fi

	#scrot -s -e 'mv $f ~/screenshots'; notify-send '	selected area screenshot saved!'