local cmp = require 'cmp';

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- use vsnip for snippets
        end,
    },

    mapping = {
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- enter confirms
    },

  sources = cmp.config.sources({
        { name = 'nvim_lsp' },  -- LSP suggestions
        { name = 'buffer' },    -- words from buffer
        { name = 'path' },       -- file paths
        { name = 'cmdline' },    -- command-line completion
        { name = 'vsnip' },      -- snippet completions
    })

});


