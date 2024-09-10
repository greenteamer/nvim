local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

bufferline.setup({
	options = {
		mode = "buffers",
		separator_style = "slant",
		always_show_bufferline = true,
		show_buffer_close_icons = true,
		show_buffer_icons = true,
		show_close_icon = false,
		show_tap_indicators = true,

		color_icons = true,
		diagnostics = true,
		offsets = {
			{
				filetype = "NvimTree",
				text = function()
					return vim.fn.getcwd()
				end,
				highlight = "Directory",
				text_align = "left",
				padding = 1,
			},
		},
	},
})
