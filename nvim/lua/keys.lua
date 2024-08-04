local map = vim.api.nvim_set_keymap
map('n', 'mm',  [[:NvimTreeToggle<CR>]], {})

local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', 'mf', telescope_builtin.find_files, {})
vim.keymap.set('n', 'mg', telescope_builtin.live_grep, {})
vim.keymap.set('n', 'mb', telescope_builtin.buffers, {})
vim.keymap.set('n', 'mh', telescope_builtin.help_tags, {})

