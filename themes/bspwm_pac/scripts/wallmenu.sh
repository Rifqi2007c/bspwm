cacheDir="$HOME/wallcache"
wall_dir="$HOME/.config/bspwm/themes/bspwm_pac/wallpapers"

if [ ! -d "${cacheDir}" ]; then
	mkdir -p "${cacheDir}"
fi

# Convert images in directory and save to cache dir
for imagen in "$wall_dir"/*.{jpg,jpeg,png,webp}; do
	if [ -f "$imagen" ]; then
		nombre_archivo=$(basename "$imagen")
		if [ ! -f "${cacheDir}/${nombre_archivo}" ]; then
			convert -strip "$imagen" -thumbnail 500x500^ -gravity center -extent 500x500 "${cacheDir}/${nombre_archivo}"
		fi
	fi
done

rofi_command="rofi -dmenu -theme $HOME/scripts/WallSelect.rasi -theme-str ${rofi_override}"

wall_selection=$(find "${wall_dir}" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) -exec basename {} \; | sort | while read -r A; do echo -en "$A\x00icon\x1f""${cacheDir}"/"$A\n"; done | $rofi_command)

# Set wallpaper
[[ -n "$wall_selection" ]] || exit 1
feh --no-fehbg --bg-fill "${wall_dir}"/"${wall_selection}"
exit 0
