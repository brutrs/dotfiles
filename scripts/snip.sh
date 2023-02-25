#!/bin/bash

#
# Allow the user to select a rectangular area (using slurp), and then take a
# screenshot of the selected area using grim. By default, the screen shot is
# saved in the XDG pictures directory. If the clipboard option ("-c" or
# "--clipboard") is used, the image will be copied to the clipboard.
#


if test "$1" == "-c" || test "$1" == "--clipboard"; then
    grim -g "$(slurp)" "-" | wl-copy --type "image/png"
else
    O_FILE=`date +snip-%Y-%m-%e-%H-%M-%S.png`
    grim -g "$(slurp)" "$O_FILE"
fi
