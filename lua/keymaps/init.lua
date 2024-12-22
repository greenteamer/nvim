require("keymaps.telescope")
require("keymaps.trouble")
require("keymaps.buffer")
require("keymaps.fterm")

vim.api.nvim_set_keymap("n", ":", "<cmd>FineCmdline<CR>", { noremap = true })
