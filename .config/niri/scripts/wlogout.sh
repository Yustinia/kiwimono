#!/bin/bash

if pgrep -x "wlogout" > /dev/null; then
    pkill wlogout
else
    wlogout -b 6 -T 800 -B 50 -s -l "$HOME/.config/niri/modules/wlogout/layout" -C "$HOME/.config/niri/modules/wlogout/style.css"
fi