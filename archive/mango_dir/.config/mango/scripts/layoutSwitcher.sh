#!/bin/bash

SCRIPTSDIR="$HOME/.config/mango/scripts"
command="$(mmsg -gl | awk '{print $3}' | "$SCRIPTSDIR/layoutSwitcher")"

mmsg -sl "$command"

case "$command" in
    T)
        notify-send "MangoWC Layout" "Layout changed to: Tile" -u normal -i preferences-desktop
        ;;
    S)
        notify-send "MangoWC Layout" "Layout changed to: Scroller" -u normal -i preferences-desktop
        ;;
    G)
        notify-send "MangoWC Layout" "Layout changed to: Grid" -u normal -i preferences-desktop
        ;;
    CT)
        notify-send "MangoWC Layout" "Layout changed to: Center Tile" -u normal -i preferences-desktop
        ;;
    VS)
        notify-send "MangoWC Layout" "Layout changed to: Vertical Scroller" -u normal -i preferences-desktop
        ;;
    VT)
        notify-send "MangoWC Layout" "Layout changed to: Vertical Tile" -u normal -i preferences-desktop
        ;;
    VG)
        notify-send "MangoWC Layout" "Layout changed to: Vertical Grid" -u normal -i preferences-desktop
        ;;
    RT)
        notify-send "MangoWC Layout" "Layout changed to: Right Tile" -u normal -i preferences-desktop
        ;;
    *)
        notify-send "MangoWC Layout" "Unknown layout: $command" -u critical -i dialog-error
        ;;
esac