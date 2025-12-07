package.loaded["user.colorscheme"] = nil 
colorscheme = require "user.colorscheme"

require("themery").setup({
    themes=colorscheme,
    livePreview=true
})
