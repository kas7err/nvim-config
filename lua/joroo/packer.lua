vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use('wbthomason/packer.nvim')
	use{ "catppuccin/nvim", as = "catppuccin" }
	use('tanvirtin/monokai.nvim')
	use('tpope/vim-commentary')
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate' })
	use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use('junegunn/fzf.vim')
    use('junegunn/fzf')
    use("ellisonleao/gruvbox.nvim")
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('tpope/vim-rhubarb')
    use("folke/zen-mode.nvim")
    use("ThePrimeagen/vim-be-good")
    use("junegunn/gv.vim")
    use('jwalton512/vim-blade')

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'BurntSushi/ripgrep' },
            { 'sharkdp/fd' },
        }
	}

    -- use {
    --     "windwp/nvim-autopairs",
    --     config = function() require("nvim-autopairs").setup {} end
    -- }

    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require("rose-pine").setup()
            vim.cmd('colorscheme rose-pine')
        end
    })

	use {
		'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
		requires = {
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

    use {
        "danymat/neogen",
        config = function()
            require('neogen').setup {}
        end,
        -- requires = "nvim-treesitter/nvim-treesitter",
        -- Uncomment next line if you want to follow only stable versions
        -- tag = "*"
    }

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })

end)
