#!/usr/bin/env bash
set -euo pipefail

mode="${1:-dark}"

case "$mode" in
  light)
    temporary="prefer-dark"
    target="prefer-light"
    ;;
  dark)
    temporary="prefer-light"
    target="prefer-dark"
    ;;
  *)
    exit 1
    ;;
esac

dconf write /org/gnome/desktop/interface/color-scheme "'$temporary'"
sleep 0.2
dconf write /org/gnome/desktop/interface/color-scheme "'$target'"
