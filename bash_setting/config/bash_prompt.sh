# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# 修复因 LANG/LC_CTYPE=C 导致的终端提示符错位
for pat in '^en_US\.utf-?8$' '^C\.utf-?8$'; do
    loc=$(locale -a 2>/dev/null | grep -iE "$pat" | head -1)
    if [ -n "$loc" ]; then
        export LC_CTYPE="$loc"
        break
    fi
done

SUMMER_BASH_USERNAME_COLOR="\[\e[38;2;0;250;146;1m\]"
SUMMER_BASH_GIT_COLOR="\[\e[38;2;255;200;0;1m\]"
SUMMER_BASH_ENV_COLOR="\[\e[38;2;253;248;220;1m\]"
SUMMER_BASH_DIR_COLOR="\[\e[38;2;85;255;255;1m\]"
SUMMER_BASH_DOL_COLOR="\[\e[38;2;85;255;255;5m\]"
SUMMER_BASH_END_COLOR="\[\e[0m\]"
condaEnv=""

configure_prompt_multi_line(){
  local git_branch=$(get_git_branch)
  PS1='\
'$SUMMER_BASH_USERNAME_COLOR'┌'$SUMMER_USER_NAME''$SUMMER_PROMPT_SYMBOL'@\t\
'$SUMMER_ENV_COLOR''$condaEnv''$SUMMER_BASH_GIT_COLOR''$git_branch'\n\
'$SUMMER_BASH_USERNAME_COLOR'| '$SUMMER_BASH_DIR_COLOR'\w \n\
'$SUMMER_BASH_USERNAME_COLOR'└ '$SUMMER_BASH_DOL_COLOR'$ '$SUMMER_BASH_END_COLOR''
}

configure_prompt_single_line(){
  local git_branch=$(get_git_branch)
  PS1='\
'$SUMMER_BASH_USERNAME_COLOR''$SUMMER_USER_NAME''$SUMMER_PROMPT_SYMBOL'@\t\
'$SUMMER_ENV_COLOR''$condaEnv''$SUMMER_BASH_GIT_COLOR''$git_branch'\
'$SUMMER_BASH_USERNAME_COLOR' '$SUMMER_BASH_DIR_COLOR'\w \
'$SUMMER_BASH_USERNAME_COLOR' '$SUMMER_BASH_DOL_COLOR'$ '$SUMMER_BASH_END_COLOR''
}

configure_prompt() {
    case $SUMMER_PROMPT_ALTERNATIVE in
        'multi-line') configure_prompt_multi_line ;;
        'single-line') configure_prompt_single_line ;;
        *) configure_prompt_multi_line ;;
    esac
}

switch_prompt() {
    if [[ ${SUMMER_PROMPT_ALTERNATIVE} == "multi-line" ]]; then
        SUMMER_PROMPT_ALTERNATIVE="single-line"
    else
        SUMMER_PROMPT_ALTERNATIVE="multi-line"
    fi
    configure_prompt
}


PROMPT_COMMAND=configure_prompt

