#!/usr/bin/env bash
#
# Zet het scherm uit.
#
# In crontab:
#  crontab -e
#  xxx
#
export XDG_RUNTIME_DIR=/run/user/1000
export WAYLAND_DISPLAY=wayland-0

wlopm --off '*'