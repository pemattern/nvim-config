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
vim.api.nvim_set_hl(0, 'Normal', { ctermfg = 15 })
vim.api.nvim_set_hl(0, 'LineNr', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'CursorLineNr', { ctermbg = 15, ctermfg = 8 })
vim.api.nvim_set_hl(0, 'CursorLine', { reverse = true })

vim.api.nvim_set_hl(0, 'PMenu', { ctermfg = 15, ctermbg = 4 })
vim.api.nvim_set_hl(0, 'PMenuSel', { ctermbg = 8, underline = false })
vim.api.nvim_set_hl(0, 'PMenuThumb', { ctermbg = 12, ctermfg = 4 })

vim.api.nvim_set_hl(0, 'Keyword', { ctermfg = 13 })
vim.api.nvim_set_hl(0, 'String', { ctermfg = 10 })
vim.api.nvim_set_hl(0, 'Number', { ctermfg = 13 })
vim.api.nvim_set_hl(0, 'Comment', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'Type', { ctermfg = 12 })
vim.api.nvim_set_hl(0, 'Attribute', { ctermfg = 2 })
vim.api.nvim_set_hl(0, 'Boolean', { ctermfg = 13 })
vim.api.nvim_set_hl(0, 'Delimiter', { ctermfg = 15 })
vim.api.nvim_set_hl(0, 'Operator', { ctermfg = 15 })
vim.api.nvim_set_hl(0, 'Special', { ctermfg = 15 })
vim.api.nvim_set_hl(0, '@variable', { ctermfg = 15 })


-- Setup diagnostics
vim.diagnostic.config({
  virtual_text = {
    prefix = '▎',
    spacing = 4,
  },
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = true,
  float = {
    source = true,
    border = 'single',
  },
})

local signs = { Error = " ", Warn = " ", Hint = "󰟷 ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.cmd [[
  autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]]

require("config.lazy")
