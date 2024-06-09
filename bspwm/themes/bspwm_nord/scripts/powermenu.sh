#! /bin/sh

rofi_cmd() {
	rofi -dmenu \
		-theme ~/.config/bspwm/themes/bspwm_nord/rofi/powermenu.rasi
}

chosen=$(printf "⏻Shutdown\n󰜉Reboot\n󰗼Logout" | rofi_cmd)

case "$chosen" in

"⏻Shutdown") poweroff ;;
"󰜉Reboot") reboot ;;
"󰗼Logout") bspc quit ;;
*) exit 1 ;;

esac
