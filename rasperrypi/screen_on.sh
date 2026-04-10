#!/usr/bin/env bash
#
# Zet het scherm aan.
#
# In crontab:
#  crontab -e
#  xxx
#
export XDG_RUNTIME_DIR=/run/user/1000
export WAYLAND_DISPLAY=wayland-0

wlopm --on HDMI-A-1
#wlr-randr --output HDMI-A-1 --on # not necessary

# 
# This still leaves (or might leave) desktop on HDMI-A-2 active.
# Force it off, so Chromium is forced on display 1.
#
sleep 10
wlr-randr --output HDMI-A-2 --off # turn off "desktop" HDMI-A-2 