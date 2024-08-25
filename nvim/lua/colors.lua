vim.cmd.colorscheme "catppuccin"

require("nvim-treesitter.configs").setup {
	ensure_installed = {
            "eex",
            "elixir",
            "erlang",
            "heex",
            "html",
            "surface",
        },
	highlight = {enable = true},
}
