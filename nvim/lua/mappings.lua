local set = vim.keymap.set

set('n',    '<leader>e',    ':Ex<cr>',                  { noremap = true, silent = true })
set('n',    '<leader>t',    ':rightbelow term<cr>i',    { noremap = true, silent = true })
set('t',    '<c-j>',        '<c-\\><c-n><c-w>j',        { noremap = true, silent = true })
set('t',    '<c-k>',        '<c-\\><c-n><c-w>k',        { noremap = true, silent = true })
set('t',    '<c-h>',        '<c-\\><c-n><c-w>h',        { noremap = true, silent = true })
set('t',    '<c-l>',        '<c-\\><c-n><c-w>l',        { noremap = true, silent = true })
set('n',    '<leader>n',    ':set number!<cr>',         { noremap = true, silent = true })
set('n',    '<c-j>',        '<c-w>j',                   { noremap = true, silent = true })
set('n',    '<c-k>',        '<c-w>k',                   { noremap = true, silent = true })
set('n',    '<c-h>',        '<c-w>h',                   { noremap = true, silent = true })
set('n',    '<c-l>',        '<c-w>l',                   { noremap = true, silent = true })
