local builtin = require('telescope.builtin')

vim.keymap.set('n', 'tf', builtin.find_files, {})
vim.keymap.set('n', 'tg', builtin.live_grep, {})
vim.keymap.set('n', 'th', builtin.help_tags, {})
vim.keymap.set('n', 'tr', builtin.lsp_references, {})
