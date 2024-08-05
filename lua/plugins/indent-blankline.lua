return {
  "lukas-reineke/indent-blankline.nvim",
  opts = {
    indent = { char = "▏" },
    scope = { enabled = false },
  },
  main = "ibl",
  config = function(_, opts)
    local hooks = require "ibl.hooks"
    hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
    require("ibl").setup(opts)
  end,
}
