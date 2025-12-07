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
    }
};

return packages;
