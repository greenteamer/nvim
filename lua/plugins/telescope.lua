return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = {
		{
			"nvim-telescope/telescope-live-grep-args.nvim",
			-- This will not install any breaking changes.
			-- For major updates, this must be adjusted manually.
			version = "^1.0.0",
		},
	},
	config = function()
		local telescope = require("telescope")
		telescope.load_extension("live_grep_args")
		telescope.setup({
			defaults = {
				layout_config = {
					vertical = { width = 0.95, height = 0.95 },
					horizontal = { width = 0.95, height = 0.95 },
					-- other layout configuration here
				},
				layout_strategy = "horizontal",
				-- other defaults configuration here
			},
			-- other configuration values here
		})
	end,
}
