-- define your colorscheme here
-- vim.cmd("set background=light")
vim.cmd("set background=dark")
local colorscheme = "nord"
-- local colorscheme = "oxocarbon"
-- local colorscheme = "gruvbox"
-- local colorscheme = "melange"
-- local colorscheme = "kanagawa"
-- local colorscheme = "papercolor"
-- local colorscheme = "catppuccin-macchiato"

local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end
