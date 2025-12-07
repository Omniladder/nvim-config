-- File Dedicated too assigning each keymapping

-- Imports
local telescope = require('telescope.builtin')
local map = vim.keymap.set;

-- Set Leader Key

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Default Nvim Keybindings
map("n", "<leader>tt", ":tabnew<CR>", {noremap = true, silent = true})
map("n", "<leader>fe", ":e .<CR>", {noremap = true, silent = true})
    -- Moving tabs
map("n", "<leader><Left>", ":tabprev<CR>", {noremap = true, silent = true})
map("n", "<leader><Right>", ":tabnext<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>z', 'za', { noremap = true, silent = true })

-- Telescope/Search Keybindings

map('n', '<leader>ff', require('search').open, { desc = 'Telescope find files' })
map('n', '<leader>fy', telescope.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })

-- Themery
map('n', '<leader>1', ":Themery<CR>",{ desc = 'Open Themery Menu' })

-- Mason / LSP
map('n', '<leader>`', ":Mason<CR>", { desc = "Opens Mason GUI"})
map('n', 'gD', "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "Goes to declaration " })
map('n', 'gd', "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Goes to definition " })
map('n', '<leader>k', "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "Describes Term" })
map('n', '<leader>d', "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "Shows Error" })
map("n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", {desc = "Goes to implementation"})
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", {desc = "Goes to references"})

-- Neotree Keymaps
map('n', '<leader>cc', ":Neotree close<CR>", {desc = "Closes Neo Tree"})

-- Prettier
map('n', '<leader>pp', ":Prettier<CR>", {desc = "Runs Prettier"})

-- Bufferline

map("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Previous buffer" })

-- Close buffers
map("n", "<leader>bd", ":bd<CR>", { desc = "Delete buffer" })
map("n", "<leader>bc", ":BufferLinePickClose<CR>", { desc = "Pick buffer to close" })










