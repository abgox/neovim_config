vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

  -- nord theme
  use 'shaunsingh/nord.nvim' -- 这个挺好看

  use {
    'nvim-lualine/lualine.nvim', -- 状态栏
    requires = { 'kyazdani42/nvim-web-devicons', opt = true } -- 状态栏图标
  }

  use ({
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week.
  })

  -- use 'voldikss/vim-floaterm'  -- 悬浮终端

  -- Tab栏
  use {
    'akinsho/bufferline.nvim',
    tag = "v3.*",
    requires = 'nvim-tree/nvim-web-devicons'
  }
  use("numToStr/Comment.nvim") -- gcc 和 gc 注释

  use("lewis6991/gitsigns.nvim") -- 左侧git提示

  use {
    'nvim-treesitter/nvim-treesitter', -- 语法高亮
    run = ':TSUpdate'
}
  use "p00f/nvim-ts-rainbow" -- 配合 treesitter，不同括号颜色区分

  use {'mg979/vim-visual-multi'} -- 多行编辑


  -- 语法提示
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim", -- 这个相当于 mason.nvim 和 lspconfig 的桥梁
    "neovim/nvim-lspconfig"
  }
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")

  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")

  use("hrsh7th/cmp-path") -- 文件路径补全

  -- 自动补全插件
  use({
    "L3MON4D3/LuaSnip", -- snippets 引擎，不装这个自动补全会出问题
    -- follow latest release.
    tag = "v<CurrentMajor>.*",
    -- install jsregexp (optional!:).
    run = "make install_jsregexp"
  })



    -- 文件检索
  -- use {
  --   "nvim-telescope/telescope.nvim",tag = "0.1.1",
  --   requires = { { "nvim-lua/plenary.nvim"} }
  -- }

  -- use("windwp/nvim-autopairs") -- 自动补全括号,因为有ahk，就不用了

end)
