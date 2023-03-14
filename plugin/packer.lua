local packer = require('packer')

packer.startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'navarasu/onedark.nvim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}


	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
	}

    use {
		'hrsh7th/nvim-cmp',
		requires = {
			'neovim/nvim-lspconfig',
			"hrsh7th/cmp-buffer", 
			"hrsh7th/cmp-nvim-lsp",
            'hrsh7th/cmp-cmdline',
            'hrsh7th/cmp-path',  
				
		}
	}


end)
