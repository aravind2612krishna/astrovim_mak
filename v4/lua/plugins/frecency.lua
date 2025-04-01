return {
  "smartpde/telescope-recent-files",
  lazy = true,
  keys = {
    {
      "<leader>fr",
      [[<cmd>lua require('telescope').extensions.recent_files.pick()<CR>]],
      mode = "n",
      desc = "Find recent files",
    },
  },
  specs = {
    {
      "nvim-telescope/telescope.nvim",
      dependencies = { "smartpde/telescope-recent-files" },
      opts = function(_, opts)
        require("telescope").load_extension "recent_files"
        if not opts.extensions then opts.extensions = {} end
        opts.extensions.recent_files = {
          stat_files = false,
          only_cwd = true,
        }
      end,
    },
  },
}
