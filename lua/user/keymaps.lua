-- File Dedicated too assigning each keymapping

-- variables
local telescope = require('telescope.builtin')
local map = vim.keymap.set;
local harpoon = require("harpoon")

-- Set Leader Key

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Default Nvim Keybindings
    map("n", "<leader>tt", ":tabnew<CR>", {noremap = true, silent = true})
    map("n", "<leader>fe", ":e .<CR>", {noremap = true, silent = true})

    -- Moving tabs
    map("n", "<leader><Left>", ":tabprev<CR>", {noremap = true, silent = true})
    map("n", "<leader><Right>", ":tabnext<CR>", {noremap = true, silent = true})

    -- Move between splits
    map("t", "<C-h>", [[<C-\><C-n><C-w>h]])
    map("t", "<C-j>", [[<C-\><C-n><C-w>j]])
    map("t", "<C-k>", [[<C-\><C-n><C-w>k]])
    map("t", "<C-l>", [[<C-\><C-n><C-w>l]])
    
    map("n", "<C-h>", "<C-w>h")
    map("n", "<C-j>", "<C-w>j")
    map("n", "<C-k>", "<C-w>k")
    map("n", "<C-l>", "<C-w>l")

    -- Folding
    vim.api.nvim_set_keymap('n', '<leader>z', 'za', { noremap = true, silent = true })

    -- Resize splits
    map("n", "<C-Up>", ":resize +2<CR>")
    map("n", "<C-Down>", ":resize -2<CR>")
    map("n", "<C-Left>", ":vertical resize -2<CR>")
    map("n", "<C-Right>", ":vertical resize +2<CR>")

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
map('n', '<leader>gD', "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "Goes to declaration " })
map('n', '<leader>gd', "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Goes to definition " })
map('n', '<leader>k', "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "Describes Term" })
map('n', '<leader>d', "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "Shows Error" })
map("n", "<leader>gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", {desc = "Goes to implementation"})
map("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", {desc = "Goes to references"})

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

-- Harpoon
map("n", "<leader>a", function() harpoon:list():add() end, {desc = "Add page to harpoon list"});
map("n", "<leader><up>", function() harpoon:list():next() end, {desc = "Go to next harpoon pin"});
map("n", "<leader><down>", function() harpoon:list():prev() end ,{desc = "Go to previous harpoon pin"});
map("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = "Open Harpoon GUI"})

-- Toggle Term
map("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", { desc = "Horizontal Terminal" })
map("n", "<leader>tv", ":ToggleTerm size=50 direction=vertical<CR>", { desc = "Vertical Terminal" })
map("n", "<leader>tf", ":ToggleTerm direction=float<CR>", { desc = "Floating Terminal" })
map("t", "<Esc><Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })



-- Persistence
map("n", "<leader>sl", ":lua require('persistence').load()<CR>", { noremap = true, silent = true })
map("n", "<leader>sd", ":lua require('persistence').stop()<CR>", { noremap = true, silent = true }) 
map("n", "<leader>ss", ":lua require('persistence').save()<CR>", { noremap = true, silent = true })

