#!/bin/bash

setxkbmap -option caps:escape
feh --bg-scale ~/pix/plant.jpg

while true
do
	TEMP="$(($(cat /sys/class/thermal/thermal_zone0/temp) / 1000))C"
	TIME=$(date +"%H:%M") 
	BAT="Bat. $(acpi -b | awk '{ print $4 " " $5}' | tr -d ',')"

	xsetroot -name "$TIME | $BAT | $TEMP | hollow"
	sleep 10
done & exec dwm
