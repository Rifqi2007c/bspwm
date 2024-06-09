#!/usr/bin/env sh

pkill polybar && sleep 1
polybar -c ~/.config/bspwm//themes/bspwm_pac/polybar/config.ini &
