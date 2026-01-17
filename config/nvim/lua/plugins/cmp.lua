local cmp = require('cmp')

cmp.setup({
	completion = {
        autocomplete = { cmp.TriggerEvent.TextChanged }, -- Trigger after typing
        keyword_length = 1, -- Show suggestions after typing 1 character
    },
    mapping = {
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'cmdline' },
    },
})

