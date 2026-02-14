#!/bin/bash

SCRIPT_DIR="$(pwd)"
WALL_BIN="$SCRIPT_DIR/randomWall"

if [[ ! -f "$WALL_BIN" ]]; then
    clang++ -std=c++17 -o "$WALL_BIN" "$SCRIPT_DIR/randomWall.cpp"
fi

"$WALL_BIN" | bash
