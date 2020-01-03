#!/bin/bash

echo -e "\nThemes: \n\n============"
echo -e "\n1) chromatic"
echo "2) leaden"
echo "3) cardbox"
echo "4) a e s t h e t i c"
echo "5) exit"
echo  -e "\n============ \n\nchoose a number:"
read doing

case $doing in
	1)
		sed -i -e '45c\    <name>chromatic</name>' -e '872c\      <decor>no</decor>
' ~/.config/openbox/rc.xml | notify-send 'current theme: chromatic' | openbox --restart
		;;
	2)
		sed -i -e '45c\    <name>leaden</name>' -e '872c\      <decor>no</decor>
' ~/.config/openbox/rc.xml | notify-send 'current theme: leaden' | openbox --restart
		;;
	3)
		sed -i -e '45c\    <name>cardbox</name>' -e '872c\      <decor>yes</decor>
' ~/.config/openbox/rc.xml | notify-send 'current theme: cardbox [modified]' | openbox --restart
		;;
	4)
		sed -i -e '45c\    <name>aesthetic</name>' -e '872c\      <decor>no</decor>
' ~/.config/openbox/rc.xml | notify-send 'current theme: a e s t h e t i c' | feh --bg-fill ~/pics/vapor.png | openbox --restart
		;;
	5)
		exit 0
		;;
	*)
		echo "think better..."
esac