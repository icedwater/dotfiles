base=$HOME/Pictures/abcd/efgh.png
img=/tmp/i3lock.png

convert -scale 140% $base $img

i3lock -u -e -c 000000 -i $img
