local packages = {
    {
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    },
    'zaldih/themery.nvim',
    'morhetz/gruvbox',
    'catppuccin/nvim',
    'bluz71/vim-moonfly-colors',
    'ribru17/bamboo.nvim',
    'nvim-treesitter/nvim-treesitter',
    {
        'mason-org/mason.nvim'
    },
    'mason-org/mason-lspconfig.nvim',
    {
        'nvim-lualine/lualine.nvim',
        requires = { "nvim-tree/nvim-web-devicons"}
    },
    {
        'nvim-neo-tree/neo-tree.nvim',
        requires = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
            "antosha417/nvim-lsp-file-operations",
            "folke/snacks.nvim",
            "3rd/image.nvim"
        }
    },
    'neovim/nvim-lspconfig',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/vim-vsnip',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-vsnip',
    'karb94/neoscroll.nvim',
    'prettier/vim-prettier',
    'folke/which-key.nvim',
    'goolord/alpha-nvim',
    {
        "FabianWirth/search.nvim",
        requires = { "nvim-telescope/telescope.nvim" }
    },
    'windwp/nvim-autopairs',
    'numToStr/Comment.nvim',
    'lewis6991/gitsigns.nvim',
    'lukas-reineke/indent-blankline.nvim',
    'folke/todo-comments.nvim',
    'j-hui/fidget.nvim',
    {
        'akinsho/bufferline.nvim',
        requires = {'nvim-tree/nvim-web-devicons'}
    },
    {
        'ThePrimeagen/harpoon',
        branch = "harpoon2",
        requires = {'nvim-lua/plenary.nvim'}
    },
    'akinsho/toggleterm.nvim',
    {
        'nvimtools/none-ls.nvim',
        requires = {'nvimtools/none-ls-extras.nvim'}
    },
    'folke/persistence.nvim'
};

return packages;
