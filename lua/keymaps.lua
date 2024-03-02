
local telescope = require('telescope.builtin')
local trouble = require('trouble')

vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})

vim.keymap.set("n", "<leader>tt", function() trouble.toggle() end)
vim.keymap.set("n", "<leader>tw", function() trouble.toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>td", function() trouble.toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>tq", function() trouble.toggle("quickfix") end)
vim.keymap.set("n", "<leader>tl", function() trouble.toggle("loclist") end)
vim.keymap.set("n", "gR",         function() trouble.toggle("lsp_references") end)


vim.keymap.set("n", "L", ":bnext<CR>")
vim.keymap.set("n", "H", ":bprev<CR>")
