# requirement
- package installer
```
sudo pacman -S xclip feh sxhkd network-manager-applet polybar dunst rofi pulseaudio pavucontrol imagemagick fish ranger nwg-look neovim firefox alacritty ttf-nerd-fonts-symbols ttf-0xproto-nerd scrot libnotify starship
```
- AUR helper
```
yay -S cava picom-ftlabs-git ttf-0xproto vimix-cursors tela-circle-icon-theme-dracula catppuccin-gtk-theme-macchiato
```
- extra
  - sttt https://github.com/flick0/sttt
  - lazyvim http://www.lazyvim.org/
  - spotify (media player button inside polybar only work with spotify but you can change that ofcourse)
```
yay -S spotify
```
# next step
clone this repo and then move or copy .config directory into your .config directory
```
git clone https://github.com/Rifqi2007c/bspwm.git
cd bspwm
cp -r .config ~/.config
```
# final step
 - cd into ~/.config/bspwm and then chmod +x bspwmrc
```
cd ~/.config/bspwm
chmod +x bspwmrc
```
 - then cd into scripts directory and do the same thing with all the scripts
```
cd ~/.config/bspwm/scripts
chmod +x cava.sh notify-send.sh screenshot.sh volume.sh wallselect.sh launch_polybar.sh powermenu.sh toggle_picom.sh
```
and then you can start using bspwm

# pywal
pywal will not work out of the box so here a way to make it work
 - generate all the wallpaper color for pywal
```
wal -i ~/.config/bspwm/wallpapers/burning_cherry.jpeg -s
wal -i ~/.config/bspwm/wallpapers/camera.jpg -s
wal -i ~/.config/bspwm/wallpapers/phony.jpg -s
wal -i ~/.config/bspwm/wallpapers/relax.jpg -s
wal -i ~/.config/bspwm/wallpapers/waifu_pink.png -s
wal -i ~/.config/bspwm/wallpapers/wired.png -s
```
 - cd into ~/.cache/wall/schemes/ and edit all the color config. change "color0" with the these color...
   - burning cherry.jpeg = #E78284
   - camera.jpg          = #E4C890
   - phony.jpg           = #bb9af7
   - relax.jpg           = #81C8Be
   - waifu_pink.png      = #DF95A5
   - wired.png           = #8CAAEE
 - example for the burning_cherry.jpg
```
{
    "wallpaper": "/home/rifqi/.config/bspwm/wallpapers/burning_cherry.jpeg",
    "alpha": "100",
    "special": {
        "background": "#111016",
        "foreground": "#dfb3b8",
        "cursor": "#dfb3b8"
    },
    "colors": {
        "color0": "#E78284", <---- change color0 with the correct color. dont touch anything other than this
        "color1": "#654847",
        "color2": "#90363B",
        "color3": "#913A45",
        "color4": "#A0514F",
        "color5": "#D3685B",
        "color6": "#E0956E",
        "color7": "#dfb3b8",
        "color8": "#9c7d80",
        "color9": "#654847",
        "color10": "#90363B",
        "color11": "#913A45",
        "color12": "#A0514F",
        "color13": "#D3685B",
        "color14": "#E0956E",
        "color15": "#dfb3b8"
    }
}
```
