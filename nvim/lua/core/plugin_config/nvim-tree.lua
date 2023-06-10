 -- "Highly recommended" for some reason
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--
require("nvim-tree").setup {
--	update_to_buf_dir = {enable = false}
}

-- Opens Treesitter on startup
vim.cmd('NvimTreeToggle')

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
