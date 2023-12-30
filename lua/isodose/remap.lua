vim.g.mapleader = " "

-- This is for moving lines up and down in Visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.api.nvim_set_keymap('n', 'cs', '<Plug>' .. 'cs"', {}) -- Change surrounding quotes
vim.api.nvim_set_keymap('n', 'ys', '<Plug>' .. 'ysiw"', {}) -- Wrap word in quotes
