require("codecompanion").setup({
	adapters = {
		-- LLMs -------------------------------------------------------------------
		anthropic = function()
			return require("codecompanion.adapters").extend("ollama", {
				schema = {
					model = {
						default = "qwen2.5-coder:latest",
					},
				},
			})
		end,
	},
	strategies = {
		chat = {
			adapter = "ollama",
			roles = {
				llm = "CodeCompanion", -- The markdown header content for the LLM's responses
				user = "Me", -- The markdown header for your questions
			},
		},
		inline = {
			adapter = "ollama",
			roles = {
				llm = "CodeCompanion", -- The markdown header content for the LLM's responses
				user = "Me", -- The markdown header for your questions
			},
		},
	},
})
