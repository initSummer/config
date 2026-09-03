tar_bash_plugin() {
    plugin_name=${1}
    plugin_home="${SUMMER_CONFIG_DIR}/bash_setting/plugin"
    plugin_path="${plugin_home}/${plugin_name}"
    plugin_tar_path="${plugin_home}/${plugin_name}.tar.gz"

    if [ ! -d ${plugin_path} ]; then
        tar -zxf ${plugin_tar_path} -C ${plugin_home}
    fi
}

tar_bash_plugin ble-0.4.0-devel3
