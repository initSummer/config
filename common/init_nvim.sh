nvim_config_dir="~/.config/nvim"
if [ ! -d ${nvim_config_dir} ]; then
    mkdir ${nvim_config_dir} -p
fi

cp ${SUMMER_CONFIG_DIR}/nvim_setting/config/init.lua ${nvim_config_dir}

tar_nvim_plugin() {
    plugin_name=${1}
    plugin_home="${SUMMER_CONFIG_DIR}/nvim_setting/plugin"
    plugin_path="${plugin_home}/${plugin_name}"
    plugin_tar_path="${plugin_home}/${plugin_name}.tar.gz"

    if [ ! -d ${plugin_path} ]; then
        tar -zxf ${plugin_tar_path} -C ${plugin_home}
    fi
}

tar_nvim_plugin async.vim
tar_nvim_plugin lazy.nvim
tar_nvim_plugin nvim-treesitter
tar_nvim_plugin onedark.nvim
tar_nvim_plugin vim-lsp

