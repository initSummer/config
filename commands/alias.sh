#
# Author        : Summer
# Description   : alias
# 
# Revision      : 
# Rev.    Date        Designer    Description
# 1.0     2023-11-07  Summer      Initial version
# 1.1     2023-11-09  Summer      add clion, pycharm
# 

# alias clion='(nohup ~/app/clion-2023.3.4/bin/clion.sh > /dev/null &) > /dev/null'

alias crb='crontab'

alias l='ls -CFh --color=auto'
alias la='l -alh'
alias ll='l -l'

# alias pycharm='(nohup ~/app/pycharm-2023.2.3/bin/pycharm.sh > /dev/null &) > /dev/null'

alias p='python3'
alias py='python3'
alias python='python3'
alias python2="\python"

alias q='exit'

alias repo="/repo/git-repo/repo"
alias repos="repo status"

#alias rename='rename.ul'

alias tree="/btdnfs-nj/xhli/bin/tree -C"

alias vi='vim'

source ${SUMMER_CONFIG_DIR}/commands/git.sh
