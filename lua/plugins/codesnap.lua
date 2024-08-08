return {
  "mistricky/codesnap.nvim",
  -- build = "make build_generator",
  build = "make",
  keys = {
    { "<leader>cc", "<cmd>CodeSnapASCII<cr>", mode = "x", desc = "cop selected code ASCII" },
  },
  opts = {
    save_path = "~/Pictures",
    has_breadcrumbs = true,
    bg_theme = "default",
    bg_padding = 0,
    watermark = "",
    has_line_number = true,
    mac_window_bar = false,
    -- bg_theme = "",
  },
}
