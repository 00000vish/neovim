return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  opts = function()
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
    local opts = {
      theme = 'hyper',
      config = {
        header = vim.split(logo, "\n"),
        week_header = {
          enable = false,
        },
        shortcut = {
          { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        },
        footer = {}
      },
    }
    return opts
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
