tar_vim_plugin() {
    plugin_name=${1}
    plugin_home="${SUMMER_CONFIG_DIR}/vim_setting/plugin"
    plugin_path="${plugin_home}/${plugin_name}"
    plugin_tar_path="${plugin_home}/${plugin_name}.tar.gz"

    if [ ! -d ${plugin_path} ]; then
        tar -zxf ${plugin_tar_path} -C ${plugin_home}
    fi
}

tar_vim_plugin async.vim
tar_vim_plugin nerdtree
tar_vim_plugin onedark.vim
tar_vim_plugin rainbow
tar_vim_plugin vim-airline
tar_vim_plugin vim-airline-themes
tar_vim_plugin vim-lsp
