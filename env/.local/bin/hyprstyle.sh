#!/bin/bash

# --- VARIABLES ---
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"

# --- SCRIPT ---

# 1. Select a random wallpaper
wallpaper=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
if [ -z "$wallpaper" ]; then
    echo "No wallpapers found in $WALLPAPER_DIR"
    exit 1
fi

# 2. Set wallpaper with hyprpaper
hyprctl hyprpaper preload "$wallpaper"
hyprctl hyprpaper wallpaper "$MONITOR,$wallpaper"

# 3. Generate colors with wal
wal -i "$wallpaper" -s

# 4. Apply colors to Hyprland borders dynamically
# Source the wal cache file to get the color variables
source "$HOME/.cache/wal/colors.sh"

# Convert the hex codes from wal (which start with '#') to RGBA values for Hyprland
# We'll use color1 for the active border and color8 for the inactive one.
active_border_color_rgba=$(echo "$color1" | sed 's/#//')ee
inactive_border_color_rgba=$(echo "$color8" | sed 's/#//')aa

# Use hyprctl to set the keywords directly
hyprctl keyword general:col.active_border "rgba($active_border_color_rgba) rgba($active_border_color_rgba) 45deg"
hyprctl keyword general:col.inactive_border "rgba($inactive_border_color_rgba)"

# 5. Reload Waybar to apply its new theme
killall -q waybar
waybar &

echo "Theme applied with new wallpaper: $(basename "$wallpaper")"