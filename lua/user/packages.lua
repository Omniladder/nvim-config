local packages = {
  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("user.telescope")
    end,
  },

  -- Themery
  {
    "zaldih/themery.nvim",
    config = function()
      require("user.themery")
    end,
  },

  -- Colorschemes (no setup needed)
  "morhetz/gruvbox",
  "catppuccin/nvim",
  "bluz71/vim-moonfly-colors",
  "ribru17/bamboo.nvim",
  "christoomey/vim-tmux-navigator"

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("user.treesitter")
    end,
  },

  -- Mason + LSP
  {
    "mason-org/mason.nvim",
    requires = { "mason-org/mason-lspconfig.nvim" },
    config = function()
      require("user.lsp.mason")
    end,
  },

  "mason-org/mason-lspconfig.nvim",

  "neovim/nvim-lspconfig",

  -- Completion
  {
    "hrsh7th/nvim-cmp",
    config = function()
      require("user.lsp.nvim-cmp")
    end,
  },

  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/vim-vsnip",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/cmp-vsnip",

  -- Lualine
  {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("user.lualine")
    end,
  },

  -- Neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
      "antosha417/nvim-lsp-file-operations",
      "folke/snacks.nvim",
      "3rd/image.nvim",
    },
    config = function()
      require("user.remote") -- or your neo-tree config file
    end,
  },

  -- UI / Behavior Plugins
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("user.neoscroll")
    end,
  },

  "prettier/vim-prettier",

  {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup()
    end,
  },

  {
    "goolord/alpha-nvim",
    config = function()
      require("user.alpha")
    end,
  },

  {
    "FabianWirth/search.nvim",
    requires = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("user.search")
    end,
  },

  -- Small setup plugins (moved out of user.setup)
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },

  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("ibl").setup()
    end,
  },

  {
    "folke/todo-comments.nvim",
    config = function()
      require("todo-comments").setup()
    end,
  },

  {
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup()
    end,
  },

  -- Harpoon
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon").setup()
    end,
  },

  -- Terminal
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("user.toggleterm")
    end,
  },

  -- None-ls
  {
    "nvimtools/none-ls.nvim",
    requires = { "nvimtools/none-ls-extras.nvim" },
    config = function()
      require("user.null-ls")
    end,
  },

  -- Persistence
  {
    "folke/persistence.nvim",
    config = function()
      require("user.persistence")
    end,
  },
}

return packages
