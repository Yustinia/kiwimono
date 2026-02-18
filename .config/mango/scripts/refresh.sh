#!/bin/bash

MODULESDIR="$HOME/.config/mango/modules"
SCRIPTSDIR="$HOME/.config/mango/scripts"

services=(waybar swaync swww-daemon)

for service in "${services[@]}"; do
    if pgrep -x "$service" > /dev/null; then
        killall "$service"
    fi
done

sleep 0.2

swww-daemon &

waybar -c "$MODULESDIR/waybar/config.jsonc" -s "$MODULESDIR/waybar/style.css" &
swaync -c "$MODULESDIR/swaync/config.json" -s "$MODULESDIR/swaync/style.css" &
