vim.g.mapleader = ","
vim.g.maplocalleader = ";"
vim.cmd("set nowrap")
vim.opt.textwidth = 80
vim.opt.colorcolumn = "80"

vim.o.cmdheight = 0

require("options")

vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<leader><Tab>", ":Neotree toggle<CR>")

-- Quickfix
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")

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

require("colorscheme")
require("lsp")
require("keymaps")

-- Ruby
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "Fastfile", "Appfile", "Matchfile", "Podfile", "Podfile.lock" },
	command = "set filetype=ruby",
})

vim.g["conjure#log#hud#enabled"] = false

vim.notify = require("notify")

-- vim.api.nvim_create_user_command("FTermOpen", require("FTerm").open, { bang = true })
