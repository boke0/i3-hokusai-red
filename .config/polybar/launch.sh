killall polybar

MONITORS=(`xrandr --query | grep connected | awk '{print $1}'`)
MONITOR1=${MONITORS[0]}
MONITOR2=${MONITORS[1]}

MONITOR=${MONITOR1} polybar -c ~/.config/polybar/config bar_left&
MONITOR=${MONITOR2} polybar -c ~/.config/polybar/config bar_right&
