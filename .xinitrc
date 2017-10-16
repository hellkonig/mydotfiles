#! /bin/bash

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

~/.dropbox-dist/dropboxd &

# swap Caps_Lock and Control_L by calling .Xmodmap
xmodmap ~/.Xmodmap 2>/dev/null

# use chinese
export LANG=en_US.UTF-8
# export LANGUAGE=en_US:zh_CN
# export LC_CTYPE=en_US.UTF-8

# execute i3 as default window manager
exec i3
