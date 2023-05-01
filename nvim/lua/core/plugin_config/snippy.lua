require('snippy').setup({
	mappings = {
		is = {
			['<C-Tab>'] = 'expand_or_advance',
			['<S-Tab>'] = 'previous',
		},
		nx = {
			['<leader>x'] = 'cut_text',
		},
	},
})

