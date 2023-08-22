if [[ $(xrandr | grep -c "HDMI1 connected") -eq 1 ]]; then
    xrandr --output eDP1 --primary \
           --output HDMI1 --auto --rotate right --right-of eDP1;
else
    xrandr --output eDP1 --primary;
    xrandr --output HDMI1 --off;
fi
