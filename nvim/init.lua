-- 在nvim中 :so 实现重新载入设置
-- vim.o.termguicolors = true
-- vim.g.term = 'C:/Program Files/Git/bin/bash.exe' -- 无效

-- 基础设置
require("core.option") --基础设置,这会加载 lua/core/option.lua
-- Packer插件管理
require("plugins.plugins-setup")
-- 快捷键映射
require("core.keymaps")
-- 皮肤设置
vim.cmd[[colorscheme nord]]

require('plugins.lualine') -- 状态栏

require('plugins.nvim-tree') -- 文件树

require("plugins.bufferline") -- tabs

require("plugins.gitsigns") -- git 提示

require("plugins.comment") -- 注释插件，输入gcc快捷注释，多行选择输入gc即可

require("plugins.treesitter") -- 语法高亮。需要安装gcc或者zig(scoop i gcc/zig,推荐安装zig),然后打开neovim会自动安装所需环境，或者使用 :TSInstall c/cpp 命令安装

-- require("plugins.lsp") -- 语法补全
-- require("plugins.cmp")


-- 自动保存内容
-- 总共五个参数，多个参数间加上空格
-- InsertLeave 当退出插入模式，自动保存内容
-- TextChanged 好像这个不起作用
-- TextChangedI  每次内容修改就保存，速度太快
-- CursorHoldI
--  CompleteDone
-- 可以通过查一下 autocmd 获取详情
 vim.api.nvim_create_autocmd({ "InsertLeave" }, {
     callback = function()
         vim.fn.execute("silent! write")
         vim.notify("Autosaved!", vim.log.levels.INFO, {})
     end,
 })
