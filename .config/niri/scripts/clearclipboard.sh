#!/bin/bash

db_loc="$HOME/.cache/cliphist/db"

if [[ -f "$db_loc" ]]; then
    rm -fv "$db_loc"
    notify-send "Clipboard Cleared" "Cliphist database wiped successfully."
else
    notify-send "Clipboard Already Empty" "No cliphist database found."
fi
