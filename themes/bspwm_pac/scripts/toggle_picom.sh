#!/bin/bash

if pgrep -x "picom" >/dev/null; then

	killall picom

else

	$(picom -b --config ~/.config/bspwm/themes/bspwm_nord/picom/picom.conf)

fi
