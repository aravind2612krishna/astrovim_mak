return {
  {
    "bngarren/checkmate.nvim",
    ft = "markdown", -- Lazy loads for Markdown files matching patterns in 'files'
    opts = {
      -- your configuration here
      -- or leave empty to use defaults
    },
  },
  -- {
  --   "zaffron/todo-md.nvim",
  --   opts = {
  --     todo_file_path = vim.fn.expand("~/todo.md"), -- Customize your todo file location
  --     auto_sort = true, -- Auto-sort todos by completion status
  --     floating_width = 80, -- Custom width for floating window (in columns)
  --     keybindings = {
  --       open_todo_floating = "<leader>co",
  --       open_todo_buffer = "<leader>cO",
  --       add_todo = "<leader>ca",
  --       toggle_todo = "<leader>ct",
  --       delete_todo = "<leader>cd",
  --       sort_todos = "<leader>cs",
  --       clear_todos = "<leader>cc",
  --       mark_all_done = "<leader>cD",
  --       mark_all_undone = "<leader>cU",
  --       insert_today = "<leader>cdt",
  --       insert_tomorrow = "<leader>cdm",
  --       insert_full_date = "<leader>cdf",
  --     },
  --   },
  --   config = function(_, opts)
  --     require("zaffron.todo-md").setup(opts)
  --   end,
  --   keys = {
  --     { "<leader>co", desc = "Open Todo (Floating)" },
  --     { "<leader>cO", desc = "Open Todo (Buffer)" },
  --     { "<leader>ca", desc = "Add Todo Item" },
  --     { "<leader>ct", desc = "Toggle Todo Item" },
  --     { "<leader>cd", desc = "Delete Todo Item" },
  --     { "<leader>cs", desc = "Sort Todos" },
  --     { "<leader>cc", desc = "Clear Todos" },
  --     { "<leader>cD", desc = "Mark All Done" },
  --     { "<leader>cU", desc = "Mark All Undone" },
  --     { "<leader>cdt", desc = "Insert Today's Date" },
  --     { "<leader>cdm", desc = "Insert Tomorrow's Date" },
  --     { "<leader>cdf", desc = "Insert Full Date" },
  --   },
  -- },
}
