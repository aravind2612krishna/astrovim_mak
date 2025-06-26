return {
  {
    "nvim-focus/focus.nvim",
    lazy = true,
    cmd = { "FocusToggle" },
    version = "*",
    opts = {
      autoresize = {
        minwidth = 4,
        minheight = 4,
      },
      ui = {
        number = false,
      },
    },
    config = function(_, opts) require("focus").setup(opts) end,
  },
}
