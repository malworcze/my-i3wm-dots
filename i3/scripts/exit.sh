#!/bin/bash

ROFI_THEME="$HOME/.config/i3/rofi/power.rasi"

confirm=$(printf "No\nYes" | rofi -dmenu \
    -i \
    -p "Exit i3?" \
    -line-padding 4 \
    -hide-scrollbar \
    -theme "$ROFI_THEME")

[ "$confirm" = "Yes" ] && i3-msg exit
