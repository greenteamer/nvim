local obsidian = require("obsidian")

obsidian.setup({
	workspaces = {
		{
			name = "work",
			path = "~/Documents/obsidian/work",
		},
	},
	-- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
	completion = {
		nvim_cmp = true,
		-- Trigger completion at 2 chars.
		min_chars = 2,
	},
	--[[ templates = {
		folder = "templates",
		date_format = "%Y-%m-%d-%a",
		time_format = "%H:%M",
	}, ]]
})
