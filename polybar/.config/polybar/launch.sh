#!/usr/bin/env sh

set +e
## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
MONITOR=eDP polybar -c ~/.config/polybar/config top &
MONITOR=eDP-1-0 polybar -c ~/.config/polybar/config top &
MONITOR=HDMI-0 polybar -c ~/.config/polybar/config top &
