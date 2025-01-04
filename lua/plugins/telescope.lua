local function normalize_path(path)
	return path:gsub("\\", "/")
end

local function normalize_cwd()
	return normalize_path(vim.loop.cwd()) .. "/"
end

local function is_subdirectory(cwd, path)
	return string.lower(path:sub(1, #cwd)) == string.lower(cwd)
end

local function split_filepath(path)
	local normalized_path = normalize_path(path)
	local normalized_cwd = normalize_cwd()
	local filename = normalized_path:match("[^/]+$")

	if is_subdirectory(normalized_cwd, normalized_path) then
		local stripped_path = normalized_path:sub(#normalized_cwd + 1, -(#filename + 1))
		return stripped_path, filename
	else
		local stripped_path = normalized_path:sub(1, -(#filename + 1))
		return stripped_path, filename
	end
end

local function path_display(_, path)
	local stripped_path, filename = split_filepath(path)
	if filename == stripped_path or stripped_path == "" then
		return filename
	end
	return string.format("%s ~ %s", filename, stripped_path)
end

return {
	{ "nvim-telescope/telescope-smart-history.nvim" },
	{
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
					history = {
						path = "~/.local/share/nvim/databases/telescope_history.sqlite3",
						limit = 100,
					},
					-- specify the formatter here
					path_display = path_display,
				},
				-- other configuration values here
			})
		end,
	},
}
