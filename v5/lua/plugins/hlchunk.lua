return {
  "shellRaining/hlchunk.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("hlchunk").setup {
      chunk = {
        enable = true,
        chars = {
          horizontal_line = "┅",
          left_top = "┏",
          vertical_line = "┇",
          left_bottom = "┗",
          right_arrow = "┅",
        },
      },
      indent = {
        enable = true,
        chars = {
          "│",
          "¦",
          "┆",
          "┊",
        },
      },
    }
  end,
}
