vim.o.termguicolors = false
vim.o.scrolloff = 8
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.opt.fillchars = { eob = " " }

vim.o.cursorline = true

vim.api.nvim_set_hl(0, 'MyLineNr', { ctermfg = 7 })
vim.cmd [[highlight! link LineNr MyLineNr]]

vim.api.nvim_set_hl(0, 'MyCursorLineNr', { ctermbg = 15, ctermfg = 8 })
vim.cmd [[highlight! link CursorLineNr MyCursorLineNr]]

vim.api.nvim_set_hl(0, 'MyCursorLine', { reverse = true })
vim.cmd [[highlight! link CursorLine MyCursorLine]]

require("config.lazy")
