#! /bin/sh

rofi_cmd() {
	rofi -dmenu \
		-theme ~/.config/bspwm/rofi/powermenu.rasi
}

chosen=$(printf "      \n⏻Shutdown\n󰜉Reboot\n󰗼Logout\n" | rofi_cmd)

case "$chosen" in

"⏻Shutdown") poweroff ;;
"󰜉Reboot") reboot ;;
"󰗼Logout") bspc quit ;;
*) exit 1 ;;

esac
