#!/bin/bash

x=$(echo -e "Dock\nVGA-Right\nVGA-Left\nLaptop\nManual\nDual-External" | dmenu -b -i -p "Select Mode")

case $x in
	VGA-Right) xrandr --output VGA1 --auto --right-of LVDS1  ;;
	VGA-Left)  xrandr --output VGA1 --auto --left-of LVDS1 ;;
	Laptop) xrandr --output VGA1 --off ;;
	Dock) xrandr --output LVDS-1 --off --output DP-1 --mode 1280x1024 --output VGA-1 --auto --left-of DP-1 & polybar_launch ;;
	Dual-External) xrandr --output LVDS-1 --off --output DP-1 --auto --output VGA-1 --auto --left-of DP-1 && killall polybar && polybar external ;;
	Manual) arandr;;



esac
