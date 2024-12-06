require("Comment").setup({
	toggler = {
		---line-comment toggle keymap
		line = "<leader>/",
		---block-comment toggle keymap
		block = "<leader><leader>/",
	},
	---LHS of operator-pending mappings in NORMAL and VISUAL mode
	opleader = {
		---Line-comment keymap
		line = "<Leader>/",
		---Block-comment keymap
		block = "<Leader><Leader>/",
	},
})
