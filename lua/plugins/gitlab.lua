return {
  "harrisoncramer/gitlab.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "stevearc/dressing.nvim", -- Recommended but not required. Better UI for pickers.
    "nvim-tree/nvim-web-devicons", -- Recommended but not required. Icons in discussion tree.
  },
  build = function()
    require("gitlab.server").build(true)
  end, -- Builds the Go binary
  opts = {
    debug = { go_request = true, go_response = true },
    reviewer_settings = {
      diffview = {
        imply_local = true,
      },
    },
    discussion_sign_and_diagnostic = {
      skip_resolved_discussion = true,
      skip_old_revision_discussion = false,
    },
    discussion_tree = { -- The discussion tree that holds all comments
        position = "top", -- "top", "right", "bottom" or "left"
        tree_type = "by_file_name",
    },
  },
  keys = {
    {
      "glc",
      function()
        require("gitlab").choose_merge_request()
      end,
      mode = "n",
      desc = "Choose review",
    },
    {
      "glS",
      function()
        require("gitlab").review()
      end,
      mode = "n",
      desc = "Choose review",
    },
  },
}
