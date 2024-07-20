-- Set general options
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

-- set keybinds
vim.api.nvim_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })

-- Set highlight groups
vim.api.nvim_set_hl(0, 'LineNr', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'CursorLineNr', { ctermbg = 15, ctermfg = 8 })
vim.api.nvim_set_hl(0, 'CursorLine', { reverse = true })

vim.api.nvim_set_hl(0, 'PMenu', { ctermfg = 15, ctermbg = 4 })
vim.api.nvim_set_hl(0, 'PMenuSel', { ctermbg = 8, underline = false })
vim.api.nvim_set_hl(0, 'PMenuThumb', { ctermbg = 12, ctermfg = 4 })

require("config.lazy")
