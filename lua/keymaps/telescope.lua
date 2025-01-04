local telescope = require("telescope.builtin")

local find_global = function()
	telescope.find_files({ cwd = "/" })
end

vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Find File" })
vim.keymap.set("n", "<leader>fr", find_global, { desc = "Find File" })

vim.keymap.set(
	"n",
	"<leader>fg",
	":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
	{ desc = "Live Grep" }
)
vim.keymap.set(
	"n",
	"<leader>fg",
	":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
	{ desc = "Live Grep" }
)
vim.keymap.set(
	"n",
	"<leader>fs",
	":lua require('telescope.builtin').live_grep({prompt_title = 'find string in open buffers...',grep_open_files = true})<CR>",
	{ desc = "Live Buffers Grep" }
)

vim.keymap.set("n", "<leader>b", telescope.buffers, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", telescope.help_tags, { desc = "Help" })
