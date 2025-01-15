return {
  "SuperBo/fugit2.nvim",
  enabled = false,
  opts = {
    width = 100,
    rocks = {
        hererocks = true,
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
  },
  cmd = { "Fugit2", "Fugit2Diff", "Fugit2Graph" },
  keys = {
    { "<leader>F", mode = "n", "<cmd>Fugit2<cr>" },
  },
}
