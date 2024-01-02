return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    use 'rebelot/kanagawa.nvim'

    require('kanagawa').setup({
        transparent = true,
        theme = 'wave',
        statementStyle = { bold = false },
        styles = {
            boolean = 'none'
        },
        colors = {
            palette = {
                samuraiRed = '#f03030',
            },
            theme = {
                wave = {
                    syn = {
                        constant = '#00b7fa',
                    }
                }
            }
        }
    })

    vim.cmd('colorscheme kanagawa-wave')

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use 'nvim-treesitter/playground'

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{
				'williamboman/mason.nvim',
				run = function()
					pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}

    use 'tpope/vim-surround'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
end)
