local lspconfig = require("lspconfig")

lspconfig.eslint.setup({
	cmd = { "/home/dlacreme/.asdf/shims/eslint" },
  	flags = {
   	 debounce_text_changes = 150,
 	 }

})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascript",
  group = vim.api.nvim_create_augroup("eslint", { clear = true }), -- also this is not /needed/ but it's good practice 
  callback = function()
    vim.lsp.start {
      name = "eslint",
      cmd = { "/home/dlacreme/.asdf/shims/eslint"},
    }
  end,
})
