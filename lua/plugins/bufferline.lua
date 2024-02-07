return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function ()
    require("bufferline").setup{
        options = {
             diagnostics = "nvim_lsp",
             always_show_bufferline = false,
             offsets = {
               {
                 filetype = "neo-tree",
                 highlight = "Directory",
                 text_align = "left",
               },
             },
        },
    }
  end
}
