require'nvim-treesitter.configs'.setup{
	ensure_installed = {"java", "javascript", "json", "sql", "tsx", "typescript", "lua", "css"},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
}
