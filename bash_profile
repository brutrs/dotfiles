#
# vim: set syntax=bash:
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start Sway if, and only, if we are logged in on TTY1
if test `tty` == '/dev/tty1'; then
    exec sway &>>$HOME/.sway_log
fi
