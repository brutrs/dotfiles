#!/bin/sh

#
# Run a configured version of bemenu
#

PROMPT=">>>"
PREFIX=">"
FONT_NAME="Ubuntu Mono 18"
BG_COLOUR="#2b303bfc"

bemenu-run --ignorecase --prompt "$PROMPT" --prefix "$PREFIX" --list 10 \
           --width-factor 0.5 --fn "$FONT_NAME" --no-overlap            \
           --tb "$BG_COLOUR" --fb  "$BG_COLOUR" --nb "$BG_COLOUR"       \
           --hb "$BG_COLOUR" --fbb "$BG_COLOUR" --sb "$BG_COLOUR"       \
           --ab "$BG_COLOUR" --scb "$BG_COLOUR"
