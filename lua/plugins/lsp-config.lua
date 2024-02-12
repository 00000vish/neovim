return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "lua_ls",
          "rust_analyzer",
          "html",
          "tsserver",
          "jsonls",
          "cssls"
        },
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")

      local configs = require("cmp_nvim_lsp")
      local on_attach = configs.on_attach
      local capabilities = configs.capabilities

      local servers = {
        "lua_ls",
        "rust_analyzer",
        "html",
        "tsserver",
        "jsonls",
        "cssls"
      }

      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
          on_attach = on_attach,
          capabilities = capabilities,
        }
      end
    end,
  },
}
