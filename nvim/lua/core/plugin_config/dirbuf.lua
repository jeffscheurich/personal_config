-- All defaults
require("dirbuf").setup {
    hash_padding = 2,
    show_hidden = true,
    sort_order = "default",
    write_cmd = "DirbufSync",
}

vim.keymap.set('n', '<Leader><Leader>', ':Dirbuf<CR>')

