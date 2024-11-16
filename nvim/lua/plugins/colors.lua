return {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { 
                      "eex",
            "elixir",
            "erlang",
            "heex",
            "html",
            "surface",
        },
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}

