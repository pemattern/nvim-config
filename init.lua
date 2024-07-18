vim.o.termguicolors = false
vim.o.scrolloff = 8
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "number"
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

--vim.cmd [[autocmd BufWritePre lua vim.lsp.buf.format()]]

require("config.lazy")
