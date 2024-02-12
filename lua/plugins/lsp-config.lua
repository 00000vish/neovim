return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    lazy = false,
    config = function()
      local cmp_lsp = require("cmp_nvim_lsp")
      local on_attach = cmp_lsp.on_attach
      local capabilities = vim.tbl_deep_extend(
        "force",
        {},
        vim.lsp.protocol.make_client_capabilities(),
        cmp_lsp.default_capabilities())

      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "rust_analyzer",
          "html",
          "tsserver",
          "jsonls",
          "cssls"
        },
        handlers = {
          function(server_name)
            require("lspconfig")[server_name].setup {
              capabilities = capabilities,
              on_attach = on_attach
            }
          end,
        }
      })
    end,
  },
}
