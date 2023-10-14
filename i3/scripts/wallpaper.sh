#!/bin/sh
# assumes feh is installed
# second picture is for second monitor, comment as needed

PICS_FOLDER='/path/to/Pictures'

feh --no-fehbg --randomize --bg-fill ${PICS_FOLDER} \
     -no-fehbg --randomize --bg-fill ${PICS_FOLDER}
