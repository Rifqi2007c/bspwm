#!/usr/bin/env sh

pkill polybar && sleep 1
polybar -c ~/.config/bspwm/polybar/config.ini example &
