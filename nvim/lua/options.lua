local o = vim.o
local g = vim.g

vim.cmd.colorscheme 'desert'
o.number             = true
o.clipboard          = 'unnamedplus'
o.listchars          = 'tab:» '
o.smarttab           = false

g.mapleader          = ' '
g.zig_fmt_autosave   = false
