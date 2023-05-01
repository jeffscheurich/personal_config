require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"tsserver",
	}
})

local lsp = require "lspconfig"

lsp.lua_ls.setup {}
lsp.tsserver.setup {}

-- Snippy integration with lsp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig')['lua_ls'].setup {
	capabilities = capabilities
}
require('lspconfig')['tsserver'].setup {
	capabilities = capabilities
}

vim.keymap.set('n', '<Leader>o', vim.diagnostic.open_float)
vim.keymap.set('n', '<Leader>[', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<Leader>]', vim.diagnostic.goto_next)
-- vim.keymap.set('n', '<Leader>h', vim.diagnostic.hide)
vim.keymap.set('n', '<Leader>s', vim.diagnostic.show)

vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }
		vim.keymap.set('n', '<Leader>d', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', '<Leader>p', vim.lsp.buf.hover, opts)
		vim.keymap.set('n', '<Leader>h', vim.lsp.buf.signature_help, opts)
		vim.keymap.set('n', '<Leader>t', vim.lsp.buf.type_definition, opts)
		vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, opts)
		vim.keymap.set({ 'n', 'v' }, '<Leader>c', vim.lsp.buf.code_action, opts)
		vim.keymap.set('n', '<Leader>gr', vim.lsp.buf.references, opts)
		vim.keymap.set('n', '<Leader>f', function()
			vim.lsp.buf.format { async = true }
		end, opts)
	end,
})
