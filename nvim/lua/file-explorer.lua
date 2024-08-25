-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
  -- on_attach = function(bufnr)
  --  local function opts(desc)
  --    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  --  end
  -- local ok, api = pcall(require, "nvim-tree.api")
  --  assert(ok, "api module is not found")
  --  vim.keymap.set("n", "<CR>", api.node.open.tab_drop, opts("Tab drop"))
  -- end,
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
