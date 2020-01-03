#!/bin/bash

while true; do
	find ~/your_dir -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |
		shuf -n1 -z | xargs -0 feh --bg-fill
	sleep 2m
done
