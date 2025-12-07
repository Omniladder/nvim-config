require("bufferline").setup({
    options = {
        mode = "buffers",        -- show buffers, not tabs
        numbers = "ordinal",     -- 1,2,3...
        diagnostics = "nvim_lsp",-- show LSP errors/warnings
        separator_style = "slant",
        show_buffer_icons = true,
        show_close_icon = false,
        show_buffer_close_icons = false,
        color_icons = true,

        -- how to handle buffers
        always_show_bufferline = true,
        sort_by = "insert_after_current",

        -- hover (optional)
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
    },

})
