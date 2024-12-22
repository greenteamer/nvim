local trouble = require("trouble")

-- trouble bindings
vim.keymap.set("n", "<leader>tt", function()
	trouble.toggle()
end, { desc = "Trouble Toggle" })

vim.keymap.set("n", "<leader>tw", function()
	trouble.toggle("workspace_diagnostics")
end, { desc = "Trouble Workspace" })

vim.keymap.set("n", "<leader>td", function()
	trouble.toggle("document_diagnostics")
end, { desc = "Trouble Document" })

vim.keymap.set("n", "<leader>tq", function()
	trouble.toggle("quickfix")
end, { desc = "Trouble Quickfix" })

vim.keymap.set("n", "<leader>tQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Trouble Quickfix List" })

vim.keymap.set("n", "<leader>tl", function()
	trouble.toggle("loclist")
end, { desc = "Trouble Local" })

-- LSP reference
vim.keymap.set("n", "gR", function()
	trouble.toggle("lsp_references")
end, { desc = "Trouble LSP Reference" })
