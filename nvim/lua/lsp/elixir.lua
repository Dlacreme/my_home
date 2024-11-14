local lspconfig = require("lspconfig")

lspconfig.elixirls.setup({
	cmd = { "/home/dlacreme/.local/share/elixir-ls/language_server.sh" },
	on_attach = custom_attach, -- this may be required for extended functionalities of the LSP
	  capabilities = capabilities,
  	flags = {
   	 debounce_text_changes = 150,
 	 },
 	 elixirLS = {
 	   dialyzerEnabled = false,
 	   fetchDeps = false,
};
})
