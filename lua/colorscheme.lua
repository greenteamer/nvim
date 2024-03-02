-- define your colorscheme here
--local colorscheme = 'catppuccin-latte'
vim.cmd("set background=light")
local colorscheme = 'papercolor'

local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end
