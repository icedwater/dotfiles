if [[ $(xrandr | grep -c "HDMI1 connected") -eq 1 ]]; then
    xrandr --output eDP1 --primary --pos 0x1152 \
           --output HDMI1 --auto --rotate right --pos 1366x0;
else
    xrandr --output eDP1 --primary;
    xrandr --output HDMI1 --off;
fi

. ~/.fehbg
