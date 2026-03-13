#!/bin/bash

filename=~/Pictures/Screenshots/"$(date +%Y-%m-%d-%I:%M:%S%p).png"
grim -l 0 -g "$(slurp)" "$filename"
notify-send "Screenshot" "Saved to $filename"
