-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use(
	{
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})

	use({ 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})

	use({ 'ThePrimeagen/harpoon' })

	use({ 'mbbill/undotree' })

	use({ 
		"iamcco/markdown-preview.nvim", 
		run = "cd app && npm install", 
		setup = function() vim.g.mkdp_filetypes = { "markdown" } end, 
		ft = { "markdown" }, 
	})

	use ({ 'ThePrimeagen/vim-be-good' })

    use 'ray-x/go.nvim'
    use 'ray-x/guihua.lua'

	use ({ 'tpope/vim-commentary' })

 	-- LSP Setup
	  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  	 }

end)
