#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar i3wm 2>&1 | tee -a /tmp/polybar.log & disown
