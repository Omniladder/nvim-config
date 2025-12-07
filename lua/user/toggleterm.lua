-----------------------------------------------------------
-- ToggleTerm Full Setup
-----------------------------------------------------------

-- Make sure plugin is installed first:
-- use { "akinsho/toggleterm.nvim", tag = "*" }

require("toggleterm").setup({
    size = 15,                     -- default terminal size
    open_mapping = [[<C-\>]],      -- open with Ctrl + \
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    persist_size = true,
    persist_mode = true,
    direction = "horizontal",      -- "horizontal" | "vertical" | "float"
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
        border = "curved",
        winblend = 3,
    },
});

