-- File Dedicated too assigning each keymapping

-- Set Leader Key
vim.g.mapleader = " "

-- Default Nvim Keybindings
vim.keymap.set("n", "<leader>tt", ":tabnew<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>fe", ":e .<CR>", {noremap = true, silent = true})


