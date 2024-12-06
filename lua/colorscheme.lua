-- define your colorscheme here
-- vim.cmd("set background=light")
vim.cmd("set background=dark")
-- local colorscheme = "github_dark"
-- local colorscheme = "doom-nova"
local colorscheme = "nord"
-- local colorscheme = "gruvbox"
-- local colorscheme = "melange"
-- local colorscheme = "kanagawa"
-- local colorscheme = "papercolor"
-- local colorscheme = "vscode"
-- local colorscheme = "oxocarbon"
-- local colorscheme = "catppuccin-frappe"
-- local colorscheme = "catppuccin-mocha"

local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end
