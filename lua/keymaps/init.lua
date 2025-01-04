require("keymaps.telescope")
require("keymaps.trouble")
require("keymaps.buffer")
require("keymaps.fterm")

vim.api.nvim_set_keymap("n", ":", "<cmd>FineCmdline<CR>", { noremap = true })

vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

vim.api.nvim_set_keymap("n", "<leader>tn", ":tabnew<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tc", ":tabclose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", ":tabnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-h>", ":tabprev<CR>", { noremap = true, silent = true })
