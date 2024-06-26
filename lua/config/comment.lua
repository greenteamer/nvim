require('Comment').setup({
  toggler = {
    ---Line-comment toggle keymap
    line = '<Leader>/',
    ---Block-comment toggle keymap
    block = 'gbc',
  },
  ---LHS of operator-pending mappings in NORMAL and VISUAL mode
  opleader = {
    ---Line-comment keymap
    line = 'gc',
    ---Block-comment keymap
    block = '<Leader>/',
  },
})
