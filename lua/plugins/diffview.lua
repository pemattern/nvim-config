return {
  'sindrets/diffview.nvim',
  dependencies = 'nvim-lua/plenary.nvim',
  config = function()
    local diffview = require('diffview')
    diffview.setup({
      enhanced_diff_hl = true,
      use_icons = true,
    })
  end
}
