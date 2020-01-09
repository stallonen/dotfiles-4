#!/bin/bash

scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
mpc stop

i3lock -n -i /tmp/screen.png \
    --insidecolor=37344500 --ringcolor=f2f2f2ff --line-uses-inside \
    --keyhlcolor=d23c3dff --bshlcolor=d23c3dff --separatorcolor=00000000 \
    --insidevercolor=3399ffff --insidewrongcolor=d23c3dff \
    --ringvercolor=ffffffff --ringwrongcolor=ffffffff --indpos="x+86:y+1003" \
    --radius=15 --veriftext="" --wrongtext=""

rm /tmp/screen.png
