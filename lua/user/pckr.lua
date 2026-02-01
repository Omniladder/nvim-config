-- Code relating to package installer pckr

-- Automatically Updates Packages when SO
package.loaded["user.packages"] = nil 
local packages = require("user.packages")

local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/site/pack/pckr/start/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

end

bootstrap_pckr()

vim.opt.packpath:prepend(vim.fn.stdpath("data") .. "/site")
require('pckr').add(packages)
--for _, package_name in ipairs(packages) do
--    require('pckr').add{package_name};
--end


