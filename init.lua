vim.g.mapleader = ","
vim.cmd('set nowrap')

require('options')

vim.keymap.set('n', '<Leader>e', ':Neotree toggle<CR>')

-- Lazy Nvim config
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
-- End of Lazy Nvim config

require('colorscheme')
require('lsp')
require('keymaps')

