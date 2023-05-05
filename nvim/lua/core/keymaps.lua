vim.g.mapleader = " " -- 设置主键为空格

-- 保存本地变量
local map = vim.keymap

-- map.set('模式','按键','映射为XX',opt)

-- ----- 插入模式(i) -----
map.set("i", "jk", "<ESC>") -- 退出键快速按下 jk

-- ----- 视觉模式(v) -----

-- 单行或多行移动
map.set("v", "<A-i>", ":m '<-2<CR>gv=gv") -- 上
map.set("v", "<A-k>", ":m '>+1<CR>gv=gv") -- 下

-- ----- 正常模式 -----
-- 保存
map.set("n", "ww", ":wq!<CR>") -- 强制退出(保存)
map.set("n", "qq", ":q!<CR>") -- 强制退出(不保存)

-- 取消高亮(字符搜索时会高亮搜索结果)
map.set("n","<leader>nh",":nohl<CR>")

-- nvimTree
map.set('n', '<A-m>', ':NvimTreeToggle<CR>', opt)
map.set('n', '<leader>e', ':NvimTreeToggle<CR>', opt)

-- -- alt + hjkl 在窗口之间跳转。
map.set("n", "<A-j>", "<C-w>h", opt)
map.set("n", "<A-l>", "<C-w>l", opt)
map.set("n", "<A-i>", "<C-w>i", opt)
map.set("n", "<A-k>", "<C-w>k", opt)

-- -- bufferline 左右Tab切换(配合AHK为 Space + w + j/l)
map.set("n", "<C-j>", ":BufferLineCyclePrev<CR>", opt)
map.set("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

-- 窗口
map.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
map.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口


-- visual 模式下连续使用 > 缩进代码
map.set('v', '<', '<gv', opt)
map.set('v', '>', '>gv', opt)


-- local opt = { noremap = true, silent = true }

-- -- 之后就可以这样映射按键了
--

-- -- 浏览代码(Ctrl + u/d)
-- map("n", "<C-u>", "9k", opt)
-- map("n", "<C-d>", "9j", opt)

-- -- 分屏相关
-- -- 分屏相关的操作都放在 s + 某个按键 ，s 表示 split。

-- -- sv 水平分屏
-- -- sh 垂直分屏
-- -- sc 关闭当前分屏 (s = close)
-- -- so 关闭其他分屏 (o = other)
-- -- s> s< s= sj sk 分屏比例控制


-- map("v", "<C-A-i>", ":vsp<CR>", opt)
-- map("v", "sh", ":sp<CR>", opt)
-- map("v", "sc", "<C-w>c", opt)
-- map("v", "so", "<C-w>o", opt) -- close others

-- -- 比例控制（不常用，因为支持鼠标拖拽）
-- map("n", "s>", ":vertical resize +20<CR>", opt)
-- map("n", "s<", ":vertical resize -20<CR>", opt)
-- map("n", "s=", "<C-w>=", opt)
-- map("n", "sj", ":resize +10<CR>", opt)
-- map("n", "sk", ":resize -10<CR>", opt)




