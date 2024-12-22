local wk = require("which-key")

wk.add({
	-- groups
	{ "<leader>f", group = "File" },
	{ "<leader>w", proxy = "<c-w>", group = "windows" }, -- proxy to window mappings
	{
		"<leader>b",
		group = "buffers",
		expand = function()
			return require("which-key.extras").expand.buf()
		end,
	},
	{
		-- Nested mappings are allowed and can be added in any order
		-- Most attributes can be inherited or overridden on any level
		-- There's no limit to the depth of nesting
		mode = { "n", "v" }, -- NORMAL and VISUAL mode
		{ "<leader>q", "<cmd>q<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
		{ "<leader>w", "<cmd>w<cr>", desc = "Write" },
	},
})

--[[ wk.setup({
	triggers = "auto", -- automatically setup triggers
	plugins = {
		spelling = {
			enabled = true, -- show which-key for spelling suggestions
			suggestions = 100, -- how many suggestions should be shown in spelling
		},
	},
}) ]]
