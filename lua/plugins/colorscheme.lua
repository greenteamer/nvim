return {
	{ "projekt0n/github-nvim-theme" },
	{ "GustavoPrietoP/doom-themes.nvim" },
	{ "shaunsingh/nord.nvim" },
	{ "nyoom-engineering/oxocarbon.nvim" },
	{ "morhetz/gruvbox" },
	{ "rebelot/kanagawa.nvim" },
	{ "NLKNguyen/papercolor-theme" },
	{ "Mofiqul/vscode.nvim" },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "frappe",
				default_integrations = true,
				integrations = {
					barbar = true,
				},
			})
		end,
	},
	{ "savq/melange-nvim" },
	{ "norcalli/nvim-colorizer.lua", opts = {} },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	-- { "HiPhish/rainbow-delimiters.nvim" },
	{ "jamescherti/vim-tomorrow-night-deepblue" },
	{ "chriskempson/tomorrow-theme" },
	{
		"uloco/bluloco.nvim",
		lazy = false,
		priority = 1000,
		dependencies = { "rktjmp/lush.nvim" },
		config = function()
			-- your optional config goes here, see below.
			require("bluloco").setup({
				style = "light", -- "auto" | "dark" | "light"
				transparent = false,
				italics = false,
				terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
				guicursor = true,
			})
		end,
	},
	{ "EdenEast/nightfox.nvim" },
	{
		"zenbones-theme/zenbones.nvim",
		-- Optionally install Lush. Allows for more configuration or extending the colorscheme
		-- If you don't want to install lush, make sure to set g:zenbones_compat = 1
		-- In Vim, compat mode is turned on as Lush only works in Neovim.
		dependencies = "rktjmp/lush.nvim",
		lazy = false,
		priority = 1000,
		-- you can set set configuration options here
		-- config = function()
		--     vim.g.zenbones_darken_comments = 45
		--     vim.cmd.colorscheme('zenbones')
		-- end
	},
}
