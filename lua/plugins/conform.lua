-- Autoformat
return {
	"stevearc/conform.nvim",
	opts = {
		notify_on_error = true,
		format_on_save = {
			timeout_ms = 200,
			lsp_fallback = true,
		},
		formatters_by_ft = {
			-- Conform can also run multiple formatters sequentially
			-- python = { "isort", "black" },
			--
			-- You can use a sub-list to tell conform to run *until* a formatter
			-- is found.
			lua = { "stylua" },
			clojure = { "cljfmt" },
			-- ruby = { "rubocop" },
			ocaml = { "ocamlformat" },
			javascript = { { "prettierd", "prettier" } },
			javascriptreact = { { "prettierd", "prettier" } },
			typescript = { { "prettierd", "prettier" } },
			typescriptreact = { { "prettierd", "prettier" } },
			json = { { "prettierd", "prettier" } },
			jsonc = { { "prettierd", "prettier" } },
			html = { { "prettierd", "prettier" } },
			css = { { "prettierd", "prettier" } },
			rust = { "rustfmt" },
		},
		log_level = vim.log.levels.DEBUG,
		log_file_path = "/Users/alex/.cache/nvim/log/conform.log",
	},
}
