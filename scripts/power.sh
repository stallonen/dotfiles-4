#!/bin/bash

chosen=$(echo -e "Lock\nLogout\nShutdown\nReboot\nSuspend\nHibernate\n[Cancel]" | rofi -dmenu -lines 7 -width 11 -p "shutdown" -i)

if [[ $chosen = "Lock" ]]; then
	betterlockscreen -l
elif [[ $chosen = "Logout" ]]; then
	openbox --exit
elif [[ $chosen = "Shutdown" ]]; then
	systemctl poweroff
elif [[ $chosen = "Reboot" ]]; then
	systemctl reboot
elif [[ $chosen = "Suspend" ]]; then
	systemctl suspend
elif [[ $chosen = "Hibernate" ]]; then
	systemctl hibernate
#elif [[ $chosen = "Hybrid-sleep" ]]; then
#	systemctl hibernate
#elif [[ $chosen = "Suspend-then-hibernate" ]]; then
#	systemctl suspend-then-hibernate
fi