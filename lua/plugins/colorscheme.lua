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
}
