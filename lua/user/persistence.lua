local persistence = require('persistence')

-- Basic configuration
persistence.setup({
    dir = vim.fn.expand(vim.fn.stdpath("data") .. "/sessions/"), -- where sessions are saved
    options = { "buffers", "curdir", "tabpages", "winsize" },     -- what to restore
    autoload = true,  -- automatically load last session on start
})

