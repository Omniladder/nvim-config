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
    'karb94/neoscroll.nvim'
};

return packages;
