return {
'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
       sidebar_filetypes = {
         -- Use the default values: {event = 'BufWinLeave', text = nil}
         NvimTree = true,
         -- Or, specify the text used for the offset:
         undotree = {text = 'undotree'},
         -- Or, specify the event which the sidebar executes when leaving:
         ['neo-tree'] = {event = 'BufWipeout'},
         -- Or, specify both
         Outline = {event = 'BufWinLeave', text = 'symbols-outline'},
       },
    },
}

