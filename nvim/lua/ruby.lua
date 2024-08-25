local lspconfig = require("lspconfig")

lspconfig.ruby_lsp.setup({})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "ruby",
  group = vim.api.nvim_create_augroup("RubyLSP", { clear = true }), -- also this is not /needed/ but it's good practice 
  callback = function()
    vim.lsp.start {
      name = "standard",
      cmd = { "/home/dlacreme/.asdf/shims/standardrb", "--lsp" },
    }
  end,
})
