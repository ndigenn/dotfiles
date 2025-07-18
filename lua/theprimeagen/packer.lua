-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')

	use {
		'VonHeikemen/lsp-zero.nvim',
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

	use('dart-lang/dart-vim-plugin')
	use {
		'akinsho/flutter-tools.nvim',
		requires = 'nvim-lua/plenary.nvim'
	}

	-- use('vim-airline/vim-airline')
	use("tpope/vim-commentary")
	use('folke/zen-mode.nvim')
	use('github/copilot.vim')
	use('junegunn/goyo.vim')
	use('tpope/vim-speeddating')
	use('tpope/vim-surround')
	use('vimwiki/vimwiki')
	use('farmergreg/vim-lastplace')
	use('ap/vim-css-color')
	use('nvim-orgmode/orgmode')
	-- use('preservim/nerdtree')	-- I sEcREtlY wANt vSCoDe
	use('christoomey/vim-tmux-navigator')
	use('sharkdp/fd') -- needed for telescope ?

	use { "catppuccin/nvim", as = "catppuccin" }

end)
