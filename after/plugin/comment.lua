require('Comment').setup({
    toggler = {
        ---Line-comment toggle keymap
        -- line = 'gcc',
        line = '<leader>c<space>',
        ---Block-comment toggle keymap
        -- block = 'gbc',
        block = '<leader>b<space>',
    },
    opleader = {
        ---Line-comment keymap
        line = '<leader>c',
        ---Block-comment keymap
        block = '<leader>b',
    },
    ---Function to call before (un)comment
    pre_hook = nil,
    ---Function to call after (un)comment
    post_hook = nil,
})
