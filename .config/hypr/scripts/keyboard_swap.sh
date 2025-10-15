#!/usr/bin/env bash

# ╭─────────────────────────────────────────────────────────────╮
# │                    Keyboard Layout Swap                     │
# │                    hyprland script                          │
# ╰─────────────────────────────────────────────────────────────╯

# ── Get the main keyboard layout ──
LAYOUT_MAIN=$(hyprctl -j devices | jq '.keyboards' | jq '.[] | select (.main == true)' | awk -F '\"' '{if ($2=="active_keymap") print $4}')

ICON_SRC="$HOME/.config/hypr/icons/keyboard.svg"
ICON_TMP="/tmp/keyboard_icon.svg"

sed "s/fill=\"#.*\"/fill=\"#a6e3a1\"/g" "$ICON_SRC" > "$ICON_TMP"

notify-send -a "Keyboard Layout" -r 91190 -t 800 -i "$ICON_TMP" "${LAYOUT_MAIN}"

