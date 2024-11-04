local o = vim.o
local g = vim.g

o.number             = true
o.clipboard          = 'unnamedplus'
o.laststatus         = 0
o.list               = true
o.listchars          = 'tab:» '

g.mapleader          = ' '
g.zig_fmt_autosave   = false

vim.cmd 'autocmd FileType * set formatoptions-=cro'
vim.cmd 'command -nargs=* Compile set makeprg= | make <args> | set makeprg=make'
