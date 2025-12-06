
-- Main Nvim functions basically anything not relating to package or keybinding

-- Line Numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Global Clipboard
vim.opt.clipboard = "unnamedplus"

-- Undo History
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"

-- Cursor Improvements
vim.opt.scrolloff = 8 --
vim.opt.wrap = false -- Stops text from wrapping keeping on 1 line
vim.opt.sidescrolloff = 8

vim.opt.cursorline = true

-- Set tabwidth
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Search Improvements
vim.opt.hlsearch = true       -- highlight search results
vim.opt.incsearch = true      -- show matches as you type
vim.opt.ignorecase = true


