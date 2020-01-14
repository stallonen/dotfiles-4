#!/bin/bash

chosen=$(echo -e "fullscreen\narea\narea [clipboard]\nactive window\n[cancel]" | rofi -dmenu -lines 5 -width 10 -p "screenshot" -i)

if [[ $chosen = "fullscreen" ]]; then
	sleep 1; maim ~/screenshots/$(date "+%F-%H-%M-%S").png; notify-send '	screenshot saved!'
elif [[ $chosen = "area" ]]; then
	maim -s ~/screenshots/$(date "+%F-%H-%M-%S").png; notify-send '	selected area screenshot saved!'
elif [[ $chosen = "area [clipboard]" ]]; then
	maim -s | xclip -selection clipboard -t image/png; notify-send '	screenshot copied to clipboard'
elif [[ $chosen = "active window" ]]; then
	sleep 1; maim -i $(xdotool getactivewindow) ~/screenshots/$(date "+%F-%H-%M-%S").png; notify-send '	active window screenshot saved!'
fi

# with shadow
#maim -st 9999999 | convert - \( +clone -background black -shadow 80x8+5+5 \) +swap -background none -layers merge +repage ~/screenshots/$(date "+%F-%H-%M-%S").png