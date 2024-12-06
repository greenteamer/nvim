require("keymaps.telescope")
require("keymaps.trouble")
require("keymaps.buffer")

vim.api.nvim_set_keymap("n", ":", "<cmd>FineCmdline<CR>", { noremap = true })
