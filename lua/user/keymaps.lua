-- File Dedicated too assigning each keymapping

-- Imports
local telescope = require('telescope.builtin')

-- Set Leader Key

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Default Nvim Keybindings
vim.keymap.set("n", "<leader>tt", ":tabnew<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>fe", ":e .<CR>", {noremap = true, silent = true})
    -- Moving tabs
vim.keymap.set("n", "<leader><Left>", ":tabprev<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader><Right>", ":tabnext<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>z', 'za', { noremap = true, silent = true })

-- Telescope Keybindings
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })

-- Themery
vim.keymap.set('n', '<leader>1', ":Themery<CR>",{ desc = 'Open Themery Menu' })

-- Mason / LSP
vim.keymap.set('n', '<leader>`', ":Mason<CR>", { desc = "Opens Mason GUI"})
vim.keymap.set('n', 'gD', "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "Goes to declaration " })
vim.keymap.set('n', 'gd', "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Goes to definition " })
vim.keymap.set('n', '<leader>k', "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "Describes Term" })
vim.keymap.set('n', '<leader>d', "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "Shows Error" })
vim.keymap.set("n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", {desc = "Goes to Implmentation"})
vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", {desc = "Goes to references"})

-- Neotree Keymaps
vim.keymap.set('n', '<leader>cc', ":Neotree close<CR>", {desc = "Closes Neo Tree"})

-- Prettier
vim.keymap.set('n', '<leader>pp', ":Prettier<CR>", {desc = "Runs Prettier"})


