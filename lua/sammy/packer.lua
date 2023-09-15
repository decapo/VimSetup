-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -------------------------------------------------------
    -- begin theme

    -- use({
    --     'arturgoms/moonbow.nvim',
    --     as = 'moonbow',
    --     config = function()
    --         vim.cmd('colorscheme moonbow')
    --     end
    -- })

    -- use {
    --     'dasupradyumna/midnight.nvim',
    --     as = 'midnight',
    --     config = function()
    --         vim.cmd('colorscheme midnight')
    --         require("midnight").setup()
    --     end
    -- }

    -- use {
    --     'ribru17/bamboo.nvim',
    --     as = 'bamboo',
    --     config = function()
    --         require("bamboo").setup()
    --         require('bamboo').load()
    --     end
    -- }


    -- use {
    --     "loctvl842/monokai-pro.nvim",
    --     config = function()
    --         require("monokai-pro").setup()
    --         vim.cmd('colorscheme monokai-pro')
    --     end
    -- }

    use {
        "dotsilas/darcubox-nvim",
        config = function()
            vim.cmd('colorscheme darcubox')
        end
    }


    -- -- end theme

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/nvim-treesitter-context')
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }
    use("github/copilot.vim")
    use("tpope/vim-commentary")

    -- best plugin ive had the pleasure of using
    use {
        "folke/flash.nvim",
        config = function()
            require("flash").setup {
                highlight = {
                    -- show a backdrop with hl FlashBackdrop
                    backdrop = false,
                    -- Highlight the search matches
                    matches = true,
                    -- extmark priority
                    priority = 5000,
                    groups = {
                        match = "FlashMatch",
                        current = "FlashCurrent",
                        backdrop = "FlashBackdrop",
                        label = "FlashLabel",
                    },
                },
            }
        end
    }

    use('RRethy/vim-illuminate')
    use('junegunn/fzf')
    use('junegunn/fzf.vim')

    use {
        'saecki/crates.nvim',
        tag = 'v0.3.0',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('crates').setup()
        end,
    }

    use('karb94/neoscroll.nvim')

    use {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end
    }

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use('tpope/vim-surround')

    use {
        'nvim-lualine/lualine.nvim',
        options = {
            theme = 'moonbow'
        },
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function()
            require('lualine').setup()
        end
    }

    use {
        'abecodes/tabout.nvim',
        config = function()
            require('tabout').setup()
        end,
        wants = { 'nvim-treesitter' },
        after = { 'nvim-cmp' }
    }

    -- use('stevearc/dressing.nvim')
    --
    use {
        'VonHeikemen/fine-cmdline.nvim',
        requires = {
            { 'MunifTanjim/nui.nvim' }
        }
    }

    use('timonv/vim-cargo')

    -- use('godlygeek/tabular')

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly'                    -- optional, updated every week. (see issue #1193)
    }

    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

    use {
        "SmiteshP/nvim-navbuddy",
        requires = {
            "neovim/nvim-lspconfig",
            "SmiteshP/nvim-navic",
            "MunifTanjim/nui.nvim"
        }
    }

    use("wintermute-cell/gitignore.nvim")

    use {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup { icons = false }
        end
    }

    use { "cshuaimin/ssr.nvim" }

    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        after = "nvim-web-devicons",       -- keep this if you're using NvChad
        config = function()
            require("barbecue").setup
            {
                theme = 'monokai-pro'
            }
        end,
    })

    use { "tzachar/highlight-undo.nvim",
        config = function()
            require("highlight-undo").setup()
        end }

    use { "svermeulen/text-to-colorscheme.nvim" }
end)
