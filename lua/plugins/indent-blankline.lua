return {
  "lukas-reineke/indent-blankline.nvim",
  opts = {
    indent = { char = "│", highlight = "Comment" },
    scope = { char = "│", highlight = "Special", show_start = false, show_end = false },
  },
  main = "ibl",
  config = function(_, opts)
    local hooks = require "ibl.hooks"
    hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
    require("ibl").setup(opts)
  end,
}
