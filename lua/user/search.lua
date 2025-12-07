builtin = require 'telescope.builtin'
search = require 'search'

search.setup({
  -- Optional: configure how you switch tabs (normal & insert mode)
  mappings = {
    next = "<Tab>",
    prev = "<S-Tab>",
  },

  -- Example: override default tabs or append custom ones
  -- Here: use default tabs (find_files, git_files, live_grep),
  -- plus an extra tab for git commits
  append_tabs = {
    {
      name = "Commits",
      tele_func = builtin.git_commits,
      -- Only show if inside a git repo
      available = function()
        return vim.fn.isdirectory(".git") == 1
      end,
    },
  },

  -- Example: define a separate “git” collection (just illustration; optional)
  collections = {
    git = {
      initial_tab = 1,
      tabs = {
        { name = "Branches", tele_func = builtin.git_branches },
        { name = "Commits",  tele_func = builtin.git_commits },
        { name = "Stashes",  tele_func = builtin.git_stash },
      }
    }
  },
})
