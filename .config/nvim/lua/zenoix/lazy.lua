-- This file can be loaded by calling `lua require('plugins')` from your init.vim


require('lazy').setup({
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    },

    {
        'catppuccin/nvim',
        as = 'catppuccin',
        config = function()
            vim.cmd('colorscheme catppuccin')
        end
    },

    {'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}},

    "tpope/vim-fugitive",
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
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
        {'jalvesaq/cmp-nvim-r'}
    }
},


{
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
},

"yuttie/comfortable-motion.vim",
"Vigemus/iron.nvim",
"jalvesaq/Nvim-R",
'christoomey/vim-tmux-navigator',
"hrsh7th/cmp-path",
"hrsh7th/cmp-buffer",
"hrsh7th/cmp-cmdline",
"kdheepak/cmp-latex-symbols",
"airblade/vim-gitgutter",

{
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
},

"lukas-reineke/indent-blankline.nvim",
})
