vim.g.mapleader = " "

vim.g.netrw_banner = 0
vim.g.loaded_netrwPlugin = 1

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.api.nvim_set_keymap('n', '<C-n>', ':Neotree filesystem toggle left<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bf', ':Neotree buffers toggle float<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':wincmd k<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':wincmd j<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', ':wincmd h<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':wincmd l<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>h', ':nohlsearch<CR>', { noremap = true, silent = true })

vim.wo.relativenumber = true

if vim.fn.has('unnamedplus') == 1 then
  vim.o.clipboard = 'unnamedplus'
else
  vim.o.clipboard = 'unnamed'
end

vim.api.nvim_set_keymap('v', 'p', 'p:let @+=@0<CR>:let @"=@0<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'n', 'nzzzv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>cnext<CR>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<cmd>cprev<CR>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<cmd>lnext<CR>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>j', '<cmd>lprev<CR>zz', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<A-o>', '<Esc>o<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-o>', 'o<Esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<A-O>', '<Esc>O<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-O>', 'O<Esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "<C-h>", "<Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-l>", "<Right>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-j>", "<Down>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-k>", "<Up>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Tab>', '<Cmd>BufferNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>x', '<Cmd>BufferClose<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>gnh", ":Gitsigns next_hunk<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gph", ":Gitsigns prev_hunk<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>grh', ':Gitsigns reset_hunk<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>grh', ':Gitsigns reset_hunk<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gsh", ":Gitsigns preview_hunk_inline<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gdf", ":Gitsigns diffthis<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, { noremap = true, silent = true })

vim.keymap.set('n', '<C-/>', '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>',
  { noremap = true, silent = true })
vim.keymap.set('v', '<C-/>', "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
  { noremap = true, silent = true })

vim.keymap.set('n', '<leader>s', '<cmd>lua require("spectre").toggle()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
  { noremap = true, silent = true })
vim.keymap.set('v', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
  { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<C-BS>', '<C-W>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-DEL>', '<Esc>lbce', { noremap = true })

vim.keymap.set("n", "<leader>ff", '<cmd>lua require("telescope.builtin").find_files()<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fw", '<cmd>lua require("telescope.builtin").live_grep()<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fb", '<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<CR>', { noremap = true, silent = true })
