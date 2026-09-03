#
# Author        : Summer
# Description   : Make a short description for your file
# 
# Revision      : 
# Rev.    Date        Designer    Description
# 1.0     2024-01-17  Summer      Initial version
# 

cat ${HOME}/.summerConfig/topfile/bashrc >> ${HOME}/.bashrc
cat ${HOME}/.summerConfig/topfile/vimrc >> ${HOME}/.vimrc
cat ${HOME}/.summerConfig/topfile/zshrc >> ${HOME}/.zshrc

nvim_config_dir="${HOME}/.config/nvim"
if [ ! -d ${nvim_config_dir} ]; then
    mkdir ${nvim_config_dir} -p
fi
cp ${HOME}/.summerConfig/topfile/init.lua ${nvim_config_dir}
