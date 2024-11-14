return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'williamboman/mason.nvim'   
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig' 
	use { "catppuccin/nvim", as = "catppuccin" }
	use 'nvim-treesitter/nvim-treesitter'
	use "lukas-reineke/indent-blankline.nvim"
	use "folke/zen-mode.nvim"
	use 'f-person/git-blame.nvim'
	use 'gleam-lang/gleam.vim'
	-- github copilot
	use 'github/copilot.vim'

	use {
		'CopilotC-Nvim/CopilotChat.nvim',
		requires = { "nvim-lua/plenary.nvim" }
	}
	-- Hrsh7th Code Completion Suite
	use 'hrsh7th/nvim-cmp' 
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'                             
	use 'hrsh7th/cmp-path'                              
	use 'hrsh7th/cmp-buffer'                            
	use 'hrsh7th/vim-vsnip'
	 -- File explorer tree
  use {
    'stevearc/oil.nvim',
    requires = {'nvim-tree/nvim-web-devicons'}
  }
	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.8',
  		requires = {'nvim-lua/plenary.nvim'} 
	}
	use {
		'nvim-tree/nvim-tree.lua',
		requires = { 'nvim-tree/nvim-web-devicons' },
	}
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

	-- Project manager
	use 'nvim-neorg/neorg'
end)
