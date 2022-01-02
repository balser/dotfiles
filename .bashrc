# if not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# "**" used in a pathname expansion context will match all files and zero or
# more directories and subdirectories.
shopt -s globstar

# correct minor spelling errors when using cd command, see bash(1) for details
shopt -s cdspell

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# source git bash completion and prompt support
. "$HOME/.git-completion.bash"
. "$HOME/.git-prompt.sh"

# See: https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="verbose"
GIT_PS1_HIDE_IF_PWD_IGNORED=1
if [ "$color_prompt" = yes ]; then
    PS1='\[\e[01;35m\]\u:\[\e[01;36m\]\W\[\e[0m\]$(__git_ps1 " (%s)")\$ '
else
    PS1='\[\u:\W$(__git_ps1 " (%s)")\]\$ '
fi
unset color_prompt

# if this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    export PS1="\[\e]0;\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


export EDITOR=/opt/homebrew/bin/vim
export VIM_UNDO=~/.vim/undo
[ -d $VIM_UNDO ] || mkdir -p $VIM_UNDO

# use a vi-style command line editing interface
set -o vi

alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
