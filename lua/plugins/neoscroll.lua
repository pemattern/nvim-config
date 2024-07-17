return {
  "karb94/neoscroll.nvim",
  config = function ()
    require('neoscroll').setup({
      hide_cursor = true,
      stop_oef = true,
      easing = 'cubic',
    })
  end
}
