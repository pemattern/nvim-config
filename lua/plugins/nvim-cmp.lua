return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },
  config = function()
    local cmp = require("cmp")
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
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
      }),
      window = {
        completion = cmp.config.window.bordered({
          border = 'single',
          max_item_count = 10,
        }),
        documentation = cmp.config.window.bordered({
          border = 'single'
        }),
      },
    })
  end
}
