vim.g["conjure#filetype_blacklist"] = { "rust" }
-- Disable the documentation mapping
vim.g["conjure#mapping#doc_word"] = false

-- Rebind it from K to <prefix>gk
vim.g["conjure#mapping#doc_word"] = "gk"

-- Reset it to the default unprefixed K (note the special table wrapped syntax)
vim.g["conjure#mapping#doc_word"] = { "K" }

return {
	"Olical/conjure",
	"gpanders/nvim-parinfer",
	{
		"dense-analysis/ale",
		config = function()
			-- Configuration goes here.
			local g = vim.g

			g.ale_ruby_rubocop_auto_correct_all = 1

			g.ale_linters = {
				clojure = { "clj-kondo" },
				ruby = { "rubocop", "ruby" },
				lua = { "lua_language_server" },
				rust = { "rust_analyzer" },
			}
		end,
	},
}
