local o = vim.o
local g = vim.g

o.number             = true
o.clipboard          = 'unnamedplus'
o.laststatus         = 0
g.loaded_netrwPlugin = 1
g.loaded_netrw       = 1
g.mapleader          = ' '
g.zig_fmt_autosave   = false

vim.cmd 'autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o'
