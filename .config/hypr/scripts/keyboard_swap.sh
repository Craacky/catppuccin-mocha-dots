#!/usr/bin/env bash

# ╭─────────────────────────────────────────────────────────────╮
# │                    Keyboard Layout Swap                     │
# │                    hyprland script                          │
# ╰─────────────────────────────────────────────────────────────╯

# ── Get script directory ──
SCRIPT_DIR="$(dirname "$(realpath "$0")")"

# ── Get the main keyboard layout ──
LAYOUT_MAIN=$(hyprctl -j devices | jq '.keyboards' | jq '.[] | select (.main == true)' | awk -F '\"' '{if ($2=="active_keymap") print $4}')

# ── Send notification with current layout ──
notify-send -a "Keyboard Layout" -r 91190 -t 800 -i "${SCRIPT_DIR}/../dunst/icons/keyboard.svg" "${LAYOUT_MAIN}"