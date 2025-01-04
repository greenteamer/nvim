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
	-- pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
})
