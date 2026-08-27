

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
SUMMER_BASH_GIT_COLOR="\[\e[38;2;255;200;0;1m\]"
SUMMER_BASH_ENV_COLOR="\[\e[38;2;253;248;220;1m\]"
SUMMER_BASH_DIR_COLOR="\[\e[38;2;85;255;255;1m\]"
SUMMER_BASH_DOL_COLOR="\[\e[38;2;85;255;255;5m\]"
SUMMER_BASH_END_COLOR="\[\e[0m\]"
condaEnv=""
configure_prompt(){
  local git_branch=$(get_git_branch)
  PS1='\
'$SUMMER_BASH_USERNAME_COLOR'┌'$SUMMER_USER_NAME''$SUMMER_PROMPT_SYMBOL'@\t\
'$SUMMER_ENV_COLOR''$condaEnv''$SUMMER_BASH_GIT_COLOR''$git_branch'\n\
'$SUMMER_BASH_USERNAME_COLOR'| '$SUMMER_BASH_DIR_COLOR'\w \n\
'$SUMMER_BASH_USERNAME_COLOR'└ '$SUMER_BASH_DOL_COLOR'$ '$SUMMER_BASH_END_COLOR''
}
configure_prompt
