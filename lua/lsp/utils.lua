local M = {}

local function filter(arr, fn)
	if type(arr) ~= "table" then
		return arr
	end

	local filtered = {}
	for k, v in pairs(arr) do
		if fn(v, k, arr) then
			table.insert(filtered, v)
		end
	end

	return filtered
end

local function filter_dts(value)
	return not string.match(value.filename, ".*/react/.*index%.d%.ts$")
		and not string.match(value.filename, ".*/styled%-components/.*index%.d%.ts")
end

local function on_list(options)
	local items = options.items
	if #items > 1 then
		items = filter(items, filter_dts)
	end

	vim.fn.setqflist({}, " ", { title = options.title, items = items, context = options.context })
	vim.api.nvim_command("cfirst") -- or maybe you want 'copen' instead of 'cfirst'
end

local function get_opts(bufnr, desc)
	return {
		noremap = true,
		silent = true,
		buffer = bufnr,
		desc = desc,
	}
end

M.on_attach = function(_, bufnr)
	-- Enable completion triggered by <c-x><c-o>
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	-- See `:help vim.lsp.*` for documentation on any of the below functions
	local bufopts = {
		noremap = true,
		silent = true,
		buffer = bufnr,
	}

	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, get_opts(bufnr, "Go To Declaration"))

	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition({ on_list = on_list })
	end, get_opts(bufnr, "Go To Definition"))

	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)

	vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)

	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)

	vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)

	-- keybindings for workspaces
	vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)

	vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)

	vim.keymap.set("n", "<space>wl", function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, bufopts)
	-- end of keybindings for workspaces

	vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
	vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
	vim.keymap.set("n", "<space>f", function()
		vim.lsp.buf.format({ async = true })
	end, bufopts)
end

return M
