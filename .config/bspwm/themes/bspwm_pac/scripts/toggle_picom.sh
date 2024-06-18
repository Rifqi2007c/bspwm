#!/bin/bash

if pgrep -x "picom" >/dev/null; then

	killall picom

else

	$(picom -b --config ~/.config/bspwm/themes/bspwm_pac/picom/picom.conf)

fi
