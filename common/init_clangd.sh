clangd_name="clangd_22.1.6"
clangd_tar_name="${clangd_name}.tar.gz"
clangd_home="${SUMMER_CONFIG_DIR}/apps"
clangd_path=${clangd_home}/${clangd_name}
clangd_tar_path=${clangd_home}/${clangd_tar_name}

if [ ! -f ${clangd_tar_path} ]; then
    cat ${clangd_tar_path}.part_* > ${clangd_tar_path}
fi

if [ ! -d ${clangd_path} ]; then
    tar -zxf ${clangd_tar_path} -C ${clangd_home}
fi

