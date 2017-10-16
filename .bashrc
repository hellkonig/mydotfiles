#
# ~/.bashrc
#

# remove duplicate command in bash_history
export HISTCONTROL=ignoreboth:erasedups

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Change the prompt color using tput
# the original prompt is: PS1='[\u@\h \W]\$ '
#export PS1="\[$(tput bold)$(tput setb 4)$(tput setaf 7)\]\u@\h:\w $ \[$(tput sgr0)\]"

alias ls='ls --color=auto'
alias vi='vim'

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias config='/usr/bin/git --git-dir=/home/lwang/.myconf/ --work-tree=/home/lwang'
