local color_schemes = {
    {
        name = "Gruvbox Dark Hard",
        colorscheme = "gruvbox",
        before = [[
            vim.opt.background = "dark"
            vim.g.gruvbox_contrast_dark = "hard"
        ]]
    },{
        name = "Gruvbox Dark Soft",
        colorscheme = "gruvbox",
        before = [[
            vim.opt.background = "dark"
            vim.g.gruvbox_contrast_dark = "soft"
        ]]
    },
    {
        name = "Gruvbox Light",
        colorscheme = "gruvbox",
        before = [[
        vim.opt.background = "light"
        ]]
    },
    {
        name = "Catppuccin",
        colorscheme = "catppuccin",
        before = [[
        vim.opt.background = "dark"
        vim.opt.background.dark = "mocha"
        ]]
    },
    {
        name = "Moonfly",
        colorscheme = "moonfly",
        before = [[
        vim.opt.background = "dark"
        ]]
    },
    {
        name = "Bamboo",
        colorscheme = "bamboo",
        before = [[
        vim.opt.background = "dark"
        ]]

    }
}

return color_schemes
