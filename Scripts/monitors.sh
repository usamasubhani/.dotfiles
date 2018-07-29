#!/bin/bash

x=$(echo -e "VGA-Right\nVGA-Left\nLaptop\nManual\nDual-External" | dmenu -b -i -p "Select Mode")

case $x in
	VGA-Right) xrandr --output VGA1 --auto --right-of LVDS1  ;;
	VGA-Left)  xrandr --output VGA1 --auto --left-of LVDS1 ;;
	Laptop) xrandr --output VGA1 --off ;;
	Dual-External) xrandr --output LVDS1 --off --output VGA1 --auto --output DP1 --auto --right-of VGA1 && polybar external ;;
	Manual) arandr;;



esac
