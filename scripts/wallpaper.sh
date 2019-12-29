#!/bin/bash
#Автоматическая смена обоев через feh с интервалом в n-минут.
while true; do
	find ~/pics/wallpapers -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |
		shuf -n1 -z | xargs -0 feh --bg-fill
	sleep 2m
done
