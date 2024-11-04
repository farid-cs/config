local set = vim.keymap.set

set('n',       '<leader>e',        ':Ex<CR>',                   { noremap = true, silent = true })
set('n',       '<leader>n',        ':Neotree<CR>',              { noremap = true, silent = true })
set('n',       '<leader>w',        '<C-w>',                     { noremap = true, silent = true })
set('n',       '<leader>m',        ':Compile make ',            { noremap = true })
set('n',       '<leader>t',        '<cmd>rightbelow term<CR>i', { noremap = true, silent = true })
set('t',       '<C-Space>',        '<C-\\><C-n>',               { noremap = true, silent = true })
set('n',       '<leader>q',        ':copen<CR>',                { noremap = true, silent = true })
set('n',       '<leader>Q',        ':cclose<CR>zz',             { noremap = true, silent = true })
