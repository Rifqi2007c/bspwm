#!/bin/bash

case "$1" in
"select") scrot ~/Pictures/%Y-%m-%d-%T-scrot --select --line mode=edge || exit ;;
"window") scrot ~/Pictures/%Y-%m-%d-%T-scrot --focused --border || exit ;;
esac

notify-send "Screenshot taken"
