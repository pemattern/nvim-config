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
vim.api.nvim_set_hl(0, 'MyLineNr', { ctermfg = 7 })
vim.cmd [[highlight! link LineNr MyLineNr]]

require("config.lazy")
