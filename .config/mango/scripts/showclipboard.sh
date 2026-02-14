#!/bin/bash

cliphist list | rofi -dmenu -config "$HOME/.config/mango/modules/rofi/config.rasi" | cliphist decode | wl-copy
