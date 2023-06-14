#!/bin/sh

#██╗██╗  ██╗███████╗███████╗
#██║██║ ██╔╝██╔════╝╚════██║
#██║█████╔╝ ███████╗    ██╔╝
#██║██╔═██╗ ╚════██║   ██╔╝
#██║██║  ██╗███████║   ██║
#╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝

# Switching between keyboard layouts

CURRENT_LAYOUT=$(setxkbmap -query | awk 'NR==3{print $2}') 

if [ "$CURRENT_LAYOUT" = "us" ]; then
    setxkbmap "ara"
else
    setxkbmap "us"
fi
