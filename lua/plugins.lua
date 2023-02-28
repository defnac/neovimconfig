return require('packer').startup(function(use)
	-- Configuration is going here
	-- This is for lsp:
	use 'wbthomason/packer.nvim'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'

	-- Plugins for code completion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/vim-vsnip'
	
	-- Nvimtree for file exploring
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons' -- optional
		}
	}

	-- Monokai theme that I like
	use 'ofirgall/ofirkai.nvim'

	-- Treesitter
 	use {
  	-- recommended packer way of installing it is to run this function, copied from documentation
         'nvim-treesitter/nvim-treesitter',
      		run = function()
              		local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
              		ts_update()
         	end,
 	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/plenary.nvim'}}
	}
	-- Status bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = {
			'kyadzani42/nvim-web-devicons', opt= true
		}
	}
end)
