return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			render = "compact",
			fps = 60,
		})
	end,
}
