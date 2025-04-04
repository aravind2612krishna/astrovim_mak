return {
  {
    "ldelossa/litee.nvim",
    event = "VeryLazy",
    opts = {
      notify = { enabled = false },
      panel = {
        orientation = "right",
        panel_size = 50,
      },
    },
    config = function(_, opts) require("litee.lib").setup(opts) end,
  },
  {
    "ldelossa/litee-calltree.nvim",
    dependencies = "ldelossa/litee.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<Leader>ct",
        function() vim.lsp.buf.incoming_calls() end,
        mode = "n",
        desc = "Open calltree",
      },
      {
        "<Leader>cx",
        function() require("litee.calltree").hide_calltree() end,
        mode = "n",
        desc = "Open calltree",
      },
    },
    opts = {
      on_open = "panel",
      map_resize_keys = false,
    },
    config = function(_, opts) require("litee.calltree").setup(opts) end,
  },
  {
    "ldelossa/litee-symboltree.nvim",
    dependencies = "ldelossa/litee.nvim",
    event = "VeryLazy",
    config = function(_, opts) require("litee.symboltree").setup(opts) end,
  },
}
