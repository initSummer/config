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

export SUMMER_USER_NAME='summer'

export SUMMER_PROMPT_ALTERNATIVE='multi-line'

export SUMMER_PROMPT_SYMBOL=${SUMMER_PROMPT_SYMBOL_0}

export SUMMER_EN_BLE='true'

sh ${SUMMER_CONFIG_DIR}/common/init_app_tar.sh
sh ${SUMMER_CONFIG_DIR}/common/init_bash.sh
sh ${SUMMER_CONFIG_DIR}/common/init_nvim.sh
sh ${SUMMER_CONFIG_DIR}/common/init_vim.sh
