#!/usr/bin/bash

# set up displays
# xrandr --output DVI-D-0 --mode 1280x1024 --rate 75 --left-of HDMI-0
# xrandr --output HDMI-0 --mode 1920x1080 --rate 165 --primary
xrandr --output DVI-D-0 --mode 1280x1024 --rate 75 --left-of DP-0
xrandr --output DP-0 --mode 1920x1080 --rate 165 --primary
