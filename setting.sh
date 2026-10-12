#
# Author        : Summer
# Description   : Make a short description for your file
# 
# Revision      : 
# Rev.    Date        Designer    Description
# 1.0     2024-01-17  Summer      Initial version
# 

export SUMMER_CONFIG_DIR="${HOME}/.summerConfig"

source ${SUMMER_CONFIG_DIR}/data/prompt_symbol.sh

export SUMMER_USER_SHELL='bash'

# ============================================================
# user name shown in the prompt
# ============================================================
export SUMMER_USER_NAME='summer'

# ============================================================
# prompt symbol
#   available symbols are defined in
#   ${SUMMER_CONFIG_DIR}/data/prompt_symbol.sh
#   as SUMMER_PROMPT_SYMBOL_0, _1, ...
#   change the right-hand side to switch symbol
# ============================================================
export SUMMER_PROMPT_SYMBOL=${SUMMER_PROMPT_SYMBOL_0}

# ============================================================
# prompt layout switch
#   'multi-line'  = boxed prompt, one field per line:
#                     ┌user🍉@time
#                     | dir
#                     └ $
#   'signal-line' = single-line prompt, all fields on one line:
#                     user🍉@time dir  $
# ============================================================
export SUMMER_PROMPT_ALTERNATIVE='multi-line'

# ============================================================
# ble.sh line editor switch
#   true  = load ble.sh, get syntax highlighting and completion
#   false = use the default readline, no extra features
# ============================================================
export SUMMER_EN_BLE='true'

# ============================================================
# rm replacement switch
#   true  = alias rm to myrm, deleted files go to the trash
#   false = keep the native rm, deleted files are gone for good
#
# WARNING: with SUMMER_EN_MYRM='true', deleted files are moved into
#   $SUMMER_MYRM_TRASH instead of being removed. Nothing ever purges
#   that directory automatically, so it grows without bound. Clean it
#   up by hand on a regular basis, e.g. add to crontab:
#     0 3 * * * find "$HOME/.local/share/mytrash" -mindepth 1 -maxdepth 1 \
#               -type d -mtime +30 -exec rm -rf {} +
#   which drops anything older than 30 days. Skipping this will fill
#   up your disk.
# ============================================================
export SUMMER_EN_MYRM='true'

# ============================================================
# Where myrm puts deleted files. Only used when SUMMER_EN_MYRM='true'.
# myrm reads this as $SUMMER_MYRM_TRASH; if unset it falls back to
# ~/.local/share/mytrash.
# ============================================================
export SUMMER_MYRM_TRASH="${HOME}/.local/share/mytrash"

# ============================================================
# NERDTree auto-open switch
#   true  = auto-open NERDTree when starting Vim or opening a file
#   false = do not auto-open (open manually with <space>e)
# ============================================================
export SUMMER_AUTO_NERD='true'


sh ${SUMMER_CONFIG_DIR}/common/init_app_tar.sh
sh ${SUMMER_CONFIG_DIR}/common/init_bash.sh
sh ${SUMMER_CONFIG_DIR}/common/init_nvim.sh
sh ${SUMMER_CONFIG_DIR}/common/init_vim.sh

