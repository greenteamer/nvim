require("codecompanion").setup({
	adapters = {
		ollama = function()
			return require("codecompanion.adapters").extend("ollama", {
				env = {
					url = "http://localhost:11434",
					-- api_key = "OLLAMA_API_KEY",
				},
				--[[ headers = {
					["Content-Type"] = "application/json",
					["Authorization"] = "Bearer ${api_key}",
				}, ]]
				parameters = {
					sync = true,
				},
			})
		end,
	},
})
