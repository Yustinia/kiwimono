#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/Walls"
CACHE_DIR="$HOME/.cache/rofi-wallpapers"

# Create cache directory for thumbnails
mkdir -p "$CACHE_DIR"

# Generate thumbnail previews and create rofi-formatted list
temp_list=$(mktemp)

for img in "$WALLPAPER_DIR"/*; do
    filename=$(basename "$img")
    thumb="$CACHE_DIR/${filename}.thumb.jpg"
    
    # Create landscape thumbnail if it doesn't exist (16:9 ratio)
    if [ ! -f "$thumb" ]; then
        magick "$img" -resize 320x180^ -gravity center -extent 320x180 "$thumb"
    fi
    
    # Add to list with icon path and empty display name to hide filename
    echo -en "${filename}\0icon\x1f${thumb}\n" >> "$temp_list"
done

# Show in rofi with icons
selected=$(cat "$temp_list" | rofi -config "$HOME/.config/niri/modules/rofi/config.rasi" -dmenu -i -p "Wallpaper" \
    -show-icons \
    -theme-str 'listview { columns: 3; lines: 3; }' \
    -theme-str 'element { orientation: vertical; padding: 5px; }' \
    -theme-str 'element-icon { size: 100px; }' \
    -theme-str 'element-text { enabled: false; }')

rm "$temp_list"

if [ -n "$selected" ]; then
    RANDOM_X=$((RANDOM % 1920))
    RANDOM_Y=$((RANDOM % 1080))
    RANDOM_POS="${RANDOM_X},${RANDOM_Y}"

    swww img "$WALLPAPER_DIR/$selected" \
        --transition-type grow \
        --transition-pos "$RANDOM_POS" \
        --transition-duration 5 \
        --transition-fps 60 \
        --transition-bezier 0.25,0.1,0.25,1.0

    notify-send "Wallpaper Changed" "$selected" -i "$WALLPAPER_DIR/$selected"
fi