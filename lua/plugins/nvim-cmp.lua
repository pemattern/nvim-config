return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    -- "hrsh7th/cmp-cmdline",
    "onsails/lspkind-nvim",
  },
  config = function()
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview,noselect"
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<Tab>"] = cmp.mapping.confirm({ select = false }),
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp", priority = 1000 },
        { name = "buffer",   priority = 500 },
        { name = "path",     priority = 250 },
        -- { name = "cmdline", priority = 100 },
      }),
      window = {
        completion = cmp.config.window.bordered({
          border = 'single',
          max_height = 10,
        }),
        documentation = cmp.config.window.bordered({
          border = 'single'
        }),
      },
      view = {
        entries = {
          follow_cursor = true,
        },
      },
      formatting = {
        format = lspkind.cmp_format({
          with_text = true,
          maxwidth = 32,
          ellipsis_char = "...",
        })
      }
    })
  end
}
