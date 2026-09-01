-- ================== 1. 加载 lazy.nvim（本地） ==================
local config_dir = os.getenv("SUMMER_CONFIG_DIR") or vim.fn.expand("$HOME/.summerConfig")
local lazy_path = config_dir .. "/nvim_setting/plugin/lazy.nvim"
if vim.fn.isdirectory(lazy_path) == 1 then
    vim.opt.rtp:prepend(lazy_path)
else
    vim.notify("lazy.nvim not found at " .. lazy_path, vim.log.levels.ERROR)
    return
end

-- ================== 2. 插件管理（仅保留主题和高亮） ==================
require("lazy").setup({
    -- 颜色主题
    {
        "navarasu/onedark.nvim",
        dir = config_dir .. "/nvim_setting/plugin/onedark.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("onedark").setup({ style = 'darker', transparent = false })
            vim.cmd.colorscheme("onedark")
        end,
    },
    -- Tree-sitter（可选，若文件夹存在）
    -- 如果没下载好，可以注释掉
    -- {
    --     "nvim-treesitter/nvim-treesitter",
    --     dir = config_dir .. "/nvim_setting/plugin/nvim-treesitter",
    --     config = function()
    --         require("nvim-treesitter.configs").setup({
    --             ensure_installed = {},
    --             highlight = { enable = true },
    --         })
    --     end,
    -- },
})

-- ================== 3. 内置 LSP 配置（兼容性判断） ==================
if vim.lsp then
    local clangd_path = config_dir .. "/app/clangd_22.1.6/bin/clangd"
    if vim.fn.executable(clangd_path) == 1 then
        -- 快捷键绑定
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
                local opts = { buffer = ev.buf }
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
            end,
        })

        -- 打开 C/C++ 文件时启动 clangd
        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "c", "cpp", "objc", "objcpp" },
            callback = function()
                local clients = {}
                if vim.lsp.get_clients then
                    clients = vim.lsp.get_clients({ bufnr = 0, name = "clangd" })
                elseif vim.lsp.get_active_clients then
                    clients = vim.lsp.get_active_clients({ bufnr = 0, name = "clangd" })
                end
                if clients and #clients > 0 then
                    return
                end
                local root_dir = vim.fs.root and vim.fs.root(0, { "compile_commands.json", ".git" })
                if not root_dir then
                    vim.notify("No compile_commands.json or .git found", vim.log.levels.WARN)
                    return
                end
                vim.lsp.start({
                    name = "clangd",
                    cmd = { clangd_path },
                    root_dir = root_dir,
                })
            end,
        })
    else
        vim.notify("clangd not found at " .. clangd_path, vim.log.levels.WARN)
    end
else
    vim.notify("vim.lsp not available, Neovim 0.5+ required", vim.log.levels.ERROR)
end

-- ================== 4. 基础编辑器设置 ==================
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.encoding = "utf-8"
vim.opt.termguicolors = true
vim.g.mapleader = " "
vim.cmd("syntax on")
