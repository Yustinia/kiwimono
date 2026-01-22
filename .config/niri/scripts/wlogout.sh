#!/bin/bash

if pgrep -x "wlogout" > /dev/null; then
    pkill wlogout
else
    wlogout -b 1 -T 100 -B 100 -R 10 -L 1500 -s -l "$HOME/.config/niri/modules/wlogout/layout" -C "$HOME/.config/niri/modules/wlogout/style.css"
fi