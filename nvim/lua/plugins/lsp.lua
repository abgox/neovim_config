-- 配置 mason 插件
require("mason").setup({
  ui = {
    icons = {
      package_installed = "√",
      package_pending = "→",
      package_uninstalled = "×",
    }
  }
})

-- -- 配置 mason-lspconfig
require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  -- 添加语法服务使用 :Mason 进入，搜索，然后 i 进行安装
  ensure_installed = {
    -- "sumneko_lua",
  }, 
})

-- local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- require("lspconfig").sumneko_lua.setup {
--   capabilities = capabilities,
-- }
