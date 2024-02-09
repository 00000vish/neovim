return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
vim.api.nvim_create_autocmd('TabNewEntered', { command = 'Dashboard' })
     local logo = [[
 ██▒   █▓ ▒█████   ██▓▓█████▄     ██▒   █▓ ██▓ ███▄ ▄███▓
▓██░   █▒▒██▒  ██▒▓██▒▒██▀ ██▌   ▓██░   █▒▓██▒▓██▒▀█▀ ██▒
 ▓██  █▒░▒██░  ██▒▒██▒░██   █▌    ▓██  █▒░▒██▒▓██    ▓██░
  ▒██ █░░▒██   ██░░██░░▓█▄   ▌     ▒██ █░░░██░▒██    ▒██ 
   ▒▀█░  ░ ████▓▒░░██░░▒████▓       ▒▀█░  ░██░▒██▒   ░██▒
   ░ ▐░  ░ ▒░▒░▒░ ░▓   ▒▒▓  ▒       ░ ▐░  ░▓  ░ ▒░   ░  ░
   ░ ░░    ░ ▒ ▒░  ▒ ░ ░ ▒  ▒       ░ ░░   ▒ ░░  ░      ░
     ░░  ░ ░ ░ ▒   ▒ ░ ░ ░  ░         ░░   ▒ ░░      ░   
      ░      ░ ░   ░     ░             ░   ░         ░   
     ░                 ░              ░                  
    ]]
    require('dashboard').setup {
      config = {
        header = vim.split(logo, "\n"),
        center = {}
      },
      footer = function ()
        return {}
      end
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
