#!/bin/bash

chosen=$(echo -e "[Cancel]\nLogout\nShutdown\nReboot" | rofi -dmenu -i)

if [[ $chosen = "Logout" ]]; then
	bspc quit
elif [[ $chosen = "Shutdown" ]]; then
	systemctl poweroff
elif [[ $chosen = "Reboot" ]]; then
	systemctl reboot
fi
