local map = vim.api.nvim_set_keymap
map('n', 'mm',  [[:Neotree toggle<CR>]], {})

vim.keymap.set('n', '<leader>q', ':bprevious<bar>bdelete #<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>w', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>', { noremap = true, silent = true })

local telescope_builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>f', telescope_builtin.find_files, {})
vim.keymap.set('n', '<leader>g', telescope_builtin.live_grep, {})
vim.keymap.set('n', '<leader>d', telescope_builtin.buffers, {})
vim.keymap.set('n', '<leader>h', telescope_builtin.help_tags, {})

-- Set key mappings for leader + number to switch tabs
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<leader>-', '1gt', opts)
vim.api.nvim_set_keymap('n', '<leader>1', '1gt', opts)
vim.api.nvim_set_keymap('n', '<leader>2', '2gt', opts)
vim.api.nvim_set_keymap('n', '<leader>3', '3gt', opts)
vim.api.nvim_set_keymap('n', '<leader>4', '4gt', opts)
vim.api.nvim_set_keymap('n', '<leader>5', '5gt', opts)
vim.api.nvim_set_keymap('n', '<leader>6', '6gt', opts)
vim.api.nvim_set_keymap('n', '<leader>7', '7gt', opts)
vim.api.nvim_set_keymap('n', '<leader>8', '8gt', opts)
vim.api.nvim_set_keymap('n', '<leader>9', '9gt', opts)
vim.api.nvim_set_keymap('n', '<leader>0', ':tablast<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>-', ':tab new<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>=', ':tab close<CR>', opts)

-- copy current filepath to clipboard
vim.api.nvim_set_keymap('n', '<leader>p', ':let @+ = expand("%")<CR>', opts)

vim.api.nvim_set_keymap('n', 'gh', [[:lua copilotchat_quick_chat()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'hg', ":CopilotToggle<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<leader>.', '|> ', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float(0, {scope="line"})<CR>', { noremap = true, silent = true })
