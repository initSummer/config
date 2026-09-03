init_app() {
local app_name=$1
local app_tar_name="${app_name}.tar.gz"
local app_home="${SUMMER_CONFIG_DIR}/app"
local app_path=${app_home}/${app_name}
local app_tar_path=${app_home}/${app_tar_name}

if [ ! -f ${app_tar_path} ]; then
    cat ${app_tar_path}.part_* > ${app_tar_path}
fi

if [ ! -d ${app_path} ]; then
    tar -zxf ${app_tar_path} -C ${app_home}
fi
}


init_app "clangd_22.1.6"
init_app "nvim-linux-x86_64"
