# requirement
- package installer
```
sudo pacman -S feh sxhkd network-manager-applet polybar dunst rofi pulseaudio pavucontrol imagemagick fish ranger nwg-look neovim firefox alacritty ttf-0xproto-nerd scrot libnotify starship
```
- AUR helper
```
yay -S cava picom-ftlabs-git ttf-0xproto ttf-nerd-fonts-symbols vimix-cursors tela-circle-icon-theme-dracula catppuccin-gtk-theme-macchiato
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
 - cd into .cache/wall/schemes/ and edit all the color config. change "color0" with the these color...
   - burning cherry.jpeg = #E78284
   - camera.jpg          = #E4C890
   - phony.jpg           = #bb9af7
   - relax.jpg           = #81C8Be
   - waifu_pink.png      = #DF95A5
   - wired.png           = #8CAAEE
 - > for example for the burning cherry
   ```

   ```
