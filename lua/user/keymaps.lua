-- File Dedicated too assigning each keymapping

-- Imports
local telescope = require('telescope.builtin')

-- Set Leader Key
vim.g.mapleader = " "

-- Default Nvim Keybindings
vim.keymap.set("n", "<leader>tt", ":tabnew<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>fe", ":e .<CR>", {noremap = true, silent = true})
    -- Moving tabs
vim.keymap.set("n", "<leader><Left>", ":tabprev<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader><Right>", ":tabnext<CR>", {noremap = true, silent = true})

-- Telescope Keybindings
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })

-- Themery

vim.keymap.set('n', '<leader>1', ":Themery<CR>",{ desc = 'Open Themery Menu' })

