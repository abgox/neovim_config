local opt          = vim.opt -- 所有属性都放在其下

opt.gcr     = "n-v-c-i:ver25" -- 设置光标为竖线，gcr(GuiCursor)

opt.encoding = "UTF-8"
opt.fileencoding = 'utf-8'

-- 行号
-- opt.relativenumber = true -- 相对行号
opt.number         = true

-- 缩进
opt.tabstop        = 2
opt.shiftwidth     = 2
opt.shiftround     = true
opt.expandtab      = true -- 新行对齐当前行，空格替代tab
opt.autoindent     = true -- 新航对齐当前行

-- -- >> << 时移动长度(无效，待查)
-- vim.shiftwidth = 2
-- vim.shiftwidth = 2

-- 折行
opt.wrap           = true
-- 右侧参考线，超过表示代码太长了，考虑换行
-- opt.colorcolumn = "80" -- 没有折行效果，待查

-- 突出显示光标行
opt.cursorline     = true

-- 自动补全不自动选中
opt.completeopt = "menu,menuone,noselect,noinsert"

-- 搜索结果不区分大小写
opt.ignorecase = true
opt.smartcase = true -- 只搜索大写时，只匹配大写

-- 当文件被外部程序修改时，自动加载
opt.autoread = true
opt.autoread = true

-- 不可见字符的显示，这里只把空格显示为一个点
opt.listchars = "space:·,tab:··" -- 无效，待查

-- 光标在行首尾时<Left><Right>可以跳到下一行
opt.whichwrap = "<,>,[,]"

-- 启用鼠标
opt.mouse:append("a")

-- 配置剪切板
-- 取消后，dd,yy等命令不会复制到剪切板，但可在nvim中粘贴，如需复制到剪切板，可以使用鼠标右键
-- opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 外观，为了使用终端的真颜色，很多nvim主题都需要终端真颜色
opt.termguicolors = true
opt.signcolumn = "yes" -- 显示左侧图标指示列，对于debug和插件提示都非常有用


-- -- jk移动时光标下上方保留8行
-- vim.o.scrolloff = 8
-- vim.o.sidescrolloff = 8

-- -- 搜索不要高亮
-- vim.o.hlsearch = false
-- -- 边输入边搜索
-- vim.o.incsearch = true
-- -- 命令行高为2，提供足够的显示空间
-- vim.o.cmdheight = 2

-- -- 允许隐藏被修改过的buffer
-- vim.o.hidden = true
-- -- 鼠标支持
-- vim.o.mouse = "a"
-- -- 禁止创建备份文件
-- vim.o.backup = false
-- vim.o.writebackup = false
-- vim.o.swapfile = false
-- -- smaller updatetime
-- vim.o.updatetime = 300
-- -- 设置 timeoutlen 为等待键盘快捷键连击时间500毫秒，可根据需要设置
-- -- 遇到问题详见：https://github.com/nshen/learn-neovim-lua/issues/1
-- vim.o.timeoutlen = 500
-- -- split window 从下边和右边出现
-- vim.o.splitbelow = true
-- vim.o.splitright = true

-- -- 样式
-- -- vim.o.background = "dark"
-- vim.o.termguicolors = true
-- vim.opt.termguicolors = true
-- -- 是否显示不可见字符
-- vim.o.list = false
-- -- 不可见字符的显示，这里只把空格显示为一个点
-- vim.o.listchars = "space:·,tab:··"
-- -- 补全增强
-- vim.o.wildmenu = true
-- -- Dont' pass messages to |ins-completin menu|
-- vim.o.shortmess = vim.o.shortmess .. 'c'
-- -- 补全最多显示10行
-- vim.o.pumheight = 10
-- -- 永远显示 tabline
-- vim.o.showtabline = 2
-- -- 使用增强状态栏插件后不再需要 vim 的模式提示
-- vim.o.showmode = false
-- -- 配置剪切板
-- vim.opt.clipboard = "unnamedplus"
