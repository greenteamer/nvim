local lsp_utils = require("lsp.utils")
local lua_config = require("lsp.config.lua_config")
local ocaml_config = require("lsp.config.ocaml_config")

require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = { "ts_ls", "lua_ls", "rescriptls" },
})

local lspconfig = require("lspconfig")

-- golang setup
-- lspconfig.gopls.setup({})

-- typescript setup
lspconfig.ts_ls.setup({
	on_attach = lsp_utils.on_attach,
})

-- lua setup
lspconfig.lua_ls.setup(lua_config)

-- ruby setup
lspconfig.ruby_lsp.setup({
	on_attach = lsp_utils.on_attach,
})

-- python setup
lspconfig.pyright.setup({
	on_attach = lsp_utils.on_attach,
})

-- gleam setup
lspconfig.gleam.setup({})

-- ocaml setup
lspconfig.ocamllsp.setup(ocaml_config)

-- rescript setup
lspconfig.rescriptls.setup({
	on_attach = lsp_utils.on_attach,
})

-- rust setup
lspconfig.rust_analyzer.setup({
	on_attach = lsp_utils.on_attach,
})
