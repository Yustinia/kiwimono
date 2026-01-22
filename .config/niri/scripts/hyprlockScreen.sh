#!/bin/bash

WALL_DIR="$HOME/.cache"

rm -f "$WALL_DIR/lockscreen.png"
grim "$WALL_DIR/lockscreen.png"
# grim - | magick - \
#   -resize 960x540! \
#   # -blur 0x6 \
#   # -brightness-contrast -5x10 \
#   # -modulate 95,80,100 \
#   "$WALL_DIR/lockscreen.png"
hyprlock -c "$HOME/.config/niri/modules/hypr/hyprlock.conf"

exit 0