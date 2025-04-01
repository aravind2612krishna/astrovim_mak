return {
  "stevearc/oil.nvim",
  event = "VeryLazy",
  opts = {
    columns = {
      "icon",
      "permissions",
      "size",
      "mtime",
    },
  },
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
