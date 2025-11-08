#!/bin/sh

set -eu

LOCK_CMD="swaylock --indicator \
  --ring-color a26bff --ring-ver-color 3db9ff --ring-wrong-color ff6d8f \
  --ring-clear-color 4ef0c2 --inside-color 040912bf --inside-ver-color 0a1522dd \
  --inside-wrong-color 1a081ecc --inside-clear-color 041627c8 \
  --line-color 00000000 --separator-color 00000000 \
  --text-color ecf2ff --text-wrong-color ff6d8f --text-ver-color ecf2ff \
  --text-clear-color ecf2ff --bs-hl-color ff6d8f --key-hl-color 3db9ff"

swayidle -w \
    timeout 300 "$LOCK_CMD" \
    timeout 360 'hyprctl dispatch dpms off' \
    resume 'hyprctl dispatch dpms on' \
    before-sleep "$LOCK_CMD"
