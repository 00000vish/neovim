vim.g.mapleader = " "

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.relativenumber = true

if vim.fn.has('unnamedplus') ==  1 then
  vim.o.clipboard = 'unnamedplus'
else
  vim.o.clipboard = 'unnamed'
end


vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', {noremap = true, silent = true})
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', {noremap = true, silent = true})

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")


vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-s>', ':w<CR>', {noremap = true, silent = true})


vim.api.nvim_set_keymap('i', '<A-o>', '<Esc>o<Esc>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-o>', 'o<Esc>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('i', '<A-O>', '<Esc>O<Esc>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-O>', 'O<Esc>', {noremap = true, silent = true})
