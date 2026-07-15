#!/usr/bin/env bash

WALLDIR="$HOME/Pictures/Wallpapers"

mapfile -t WALLS < <(find "$WALLDIR" -type f)

while true; do
    wallpaper="${WALLS[RANDOM % ${#WALLS[@]}]}"

    awww img \
        --transition-type grow \
        --transition-duration 2 \
        "$wallpaper"

    sleep 120
done
