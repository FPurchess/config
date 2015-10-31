#!/bin/bash

if [[ $(xrandr | grep "VGA1 connected") ]]; then
	
	# home

	xrandr --output eDP1 --off
	xrandr --output VGA1 --auto
	xrandr --output HDMI1 --auto --left-of VGA1

else

	# work

	xrandr --output eDP1 --auto
	xrandr --output DP2-1 --auto --right-of eDP1
	xrandr --output DP2-2 --auto --right-of DP2-1

fi
