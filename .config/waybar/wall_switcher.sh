#!/bin/bash

# Hardcoded wallpaper directory
WALLPAPER_DIR="$HOME/Pictures/Walls"

# State file to track current wallpaper
STATE_FILE="$HOME/.config/swww_current_wallpaper"

# Get all wallpapers sorted
WALLPAPERS=($(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" -o -iname "*.gif" \) | sort))

# Check if wallpapers exist
if [ ${#WALLPAPERS[@]} -eq 0 ]; then
    echo "No wallpapers found in $WALLPAPER_DIR"
    exit 1
fi

# Get current index from state file
if [ -f "$STATE_FILE" ]; then
    CURRENT_INDEX=$(cat "$STATE_FILE")
else
    CURRENT_INDEX=0
fi

# Get next wallpaper (loop back to start)
NEXT_INDEX=$(( (CURRENT_INDEX + 1) % ${#WALLPAPERS[@]} ))
NEXT_WALLPAPER="${WALLPAPERS[$NEXT_INDEX]}"

# Generate random position within 1920x1080
RANDOM_X=$((RANDOM % 1920))
RANDOM_Y=$((RANDOM % 1080))
RANDOM_POS="${RANDOM_X},${RANDOM_Y}"

# Transition effects (cycle through different effects for variety)
EFFECTS=("fade" "wipe" "grow")
EFFECT_INDEX=$(( NEXT_INDEX % ${#EFFECTS[@]} ))
CURRENT_EFFECT="${EFFECTS[$EFFECT_INDEX]}"

# SWWW transition with parameters
swww img "$NEXT_WALLPAPER" \
    --transition-type grow \
    --transition-pos "$RANDOM_POS" \
    --transition-duration 5 \
    --transition-fps 60 \
    --transition-bezier 0.25,0.1,0.25,1.0

# Save current index for next run
echo "$NEXT_INDEX" > "$STATE_FILE"

# Optional: Display notification
if command -v notify-send &> /dev/null; then
    WALLPAPER_NAME=$(basename "$NEXT_WALLPAPER")
    notify-send "Wallpaper Changed" "$WALLPAPER_NAME" -t 2000 -i "$NEXT_WALLPAPER"
fi
