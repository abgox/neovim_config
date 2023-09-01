require("gitsigns").setup {
    signs = {
        add = { text = "+" }, -- 添加文件
        change = { text = "~"}, -- 改变文件
        delete = { text = "-"},  -- 删除文件
        topdelete = { text = "——"},
        changedelete = { text = "~"}
    }
}
