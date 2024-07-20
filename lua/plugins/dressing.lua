return {
  'stevearc/dressing.nvim',
  config = function()
    require("dressing").setup({
      input = {
        border = 'single'
      },
      select = {
        backend = { 'builtin' },
        builtin = {
          border = 'single'
        }
      }
    })
  end
}
