#!/bin/bash

chosen=$(echo -e "chromatic\nleaden\ncardbox\na e s t h e t i c\n[cancel]" | rofi -dmenu -lines 5 -width 11 -p "themes" -i)

if [[ $chosen = "chromatic" ]]; then
	sed -i -e '45c\    <name>chromatic</name>' -e '877c\      <decor>no</decor>
' ~/.config/openbox/rc.xml | notify-send 'current theme: chromatic' | openbox --restart
elif [[ $chosen = "leaden" ]]; then
	sed -i -e '45c\    <name>leaden</name>' -e '877c\      <decor>no</decor>
' ~/.config/openbox/rc.xml | notify-send 'current theme: leaden' | openbox --restart
elif [[ $chosen = "cardbox" ]]; then
	sed -i -e '45c\    <name>cardbox</name>' -e '877c\      <decor>yes</decor>
' ~/.config/openbox/rc.xml | notify-send 'current theme: cardbox [modified]' | openbox --restart
elif [[ $chosen = "a e s t h e t i c" ]]; then
	sed -i -e '45c\    <name>aesthetic</name>' -e '877c\      <decor>no</decor>
' ~/.config/openbox/rc.xml | notify-send 'current theme: a e s t h e t i c' | feh --bg-fill ~/pics/vapor.png | openbox --restart
fi