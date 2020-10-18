#! /bin/bash

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# polybar -c $HOME/.config/polybar/config mybar &
# polybar -c $HOME/.config/polybar/nord/dark-config nord-top &

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar -c ~/.config/polybar/t08/config.ini main &
done

# polybar main -c ~/.config/polybar/t12/config.ini &
