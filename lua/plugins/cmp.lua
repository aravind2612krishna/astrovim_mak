return { -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  -- override the options table that is used in the `require("cmp").setup()` call
  opts = {
    experimental = {
      ghost_text = true,
    },
    completion = {
      debounce = 200, -- Increase debounce time to reduce the frequency of LSP requests
    },
    performance = {
      max_view_entries = 50, -- Limit the number of completion items
    },
  },
}
