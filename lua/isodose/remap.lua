vim.g.mapleader = " "

-- This is for moving lines up and down in Visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<C-d>', '<C-d>zz') -- Down
vim.keymap.set('n', '<C-u>', '<C-u>zz') -- Up

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex) -- Project view (show directory tree)

vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false
})
vim.g.copilot_no_tab_map = true

vim.api.nvim_set_keymap('n', 'cs', '<Plug>' .. 'cs"', {}) -- Change surrounding quotes

vim.api.nvim_set_hl(0, 'CopilotSuggestion', { fg = '#86b7f7', italic = true })
