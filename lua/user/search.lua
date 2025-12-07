local builtin = require('telescope.builtin')

--[[
require('search').open()

require('search').open({ tab_id = 2 })
require('search').open({ tab_name = 'Grep' }) -- if multiple tabs are named the same, the first is selected
--require('search').open({ collection = 'git' }) -- Open the 'git' collection of picker

require("search").setup({
    mappings = { -- optional: configure the mappings for switching tabs (will be set in normal and insert mode(!))
        next = "<Tab>",
        prev = "<S-Tab>"
    },
    append_tabs = { -- append_tabs will add the provided tabs to the default ones
        {
            "Commits", -- or name = "Commits"
            builtin.git_commits, -- or tele_func = require('telescope.builtin').git_commits
            available = function() -- optional
                return vim.fn.isdirectory(".git") == 1
            end
        }
    },
    -- its also possible to overwrite the default tabs using the tabs key instead of append_tabs
    tabs = {
        {
            "Files",
            function(opts)
                opts = opts or {}
                if vim.fn.isdirectory(".git") == 1 then
                    builtin.git_files(opts)
                else
                    builtin.find_files(opts)
                end
            end
        }
    },
    collections = {
        -- Here the "git" collection is defined. It follows the same configure layout as tabs.
        git = {
            initial_tab = 1, -- Git branches
            tabs = {
                { name = "Branches", tele_func = builtin.git_branches },
                { name = "Commits", tele_func = builtin.git_commits },
                { name = "Stashes", tele_func = builtin.git_stash },
            }
        }
    }});
--]]
