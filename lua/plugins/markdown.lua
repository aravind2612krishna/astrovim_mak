return {
  "MeanderingProgrammer/markdown.nvim",
  enabled = false,
  name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function() require("render-markdown").setup {} end,
}
