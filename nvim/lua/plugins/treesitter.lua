require("nvim-treesitter.configs").setup {
    -- 添加需要识别的语言语法
    ensure_installed = {
        "vim",
        "bash",
        "html","css","scss","javascript","tsx","typescript","vue","json",
        "lua","python","rust","sql","ini",
        "gitcommit","gitignore",
        "latex"
    },
    highlight = { enable = true },
    indent = { enable = true },

    -- 不同括号颜色区分
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}
