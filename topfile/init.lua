local config_dir = os.getenv("SUMMER_CONFIG_DIR")
local main_config = config_dir .. "/nvim_setting/config/init.lua"

local ok, err = load(main_config)
if ok then
    ok()
else
    vim.notify("Failed to load config: " .. err, vim.log.levels.ERROR)
end
