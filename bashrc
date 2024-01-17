# 
# Author        : Summer
# Description   : Make a short description for your file
# 
# Revision      : 
# Rev.    Date        Designer    Description
# 1.0     2023-11-07  Summer      Initial version
# 

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=200000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

SUMMER_BASH_USERNAME_COLOR="\[\e[38;2;0;250;146;1m\]"
SUMMER_BASH_ENV_COLOR="\[\e[38;2;253;248;220;1m\]"
SUMMER_BASH_DIR_COLOR="\[\e[38;2;85;255;255;1m\]"
SUMMER_BASH_DOL_COLOR="\[\e[38;2;85;255;255;5m\]"
SUMMER_BASH_END_COLOR="\[\e[0m\]"
condaEnv=""
configure_prompt(){
  PS1='\
'$SUMMER_BASH_USERNAME_COLOR'┌'$SUMMER_USER_NAME''$SUMMER_PROMPT_SYMBOL'@\t\
'$SUMMER_ENV_COLOR''$condaEnv'\n\
'$SUMMER_BASH_USERNAME_COLOR'| '$SUMMER_BASH_DIR_COLOR'\w \n\
'$SUMMER_BASH_USERNAME_COLOR'└ '$SUMER_BASH_DOL_COLOR'$ '$SUMMER_BASH_END_COLOR''
}
configure_prompt

source ~/.summerConfig/commands/alias.sh
