#!/bin/bash

shopt -s nullglob
cd ~/your_dir

while true; do
	files=()
	for i in *.jpg *.png; do
		[[ -f $i ]] && files+=("$i")
	done
	range=${#files[@]}

	((range)) && feh --bg-fill "${files[RANDOM % range]}"

	sleep 15m
done