return {
  "oskarrrrrrr/symbols.nvim",
  event = VeryLazy,
  keys = {
    {
      "<leader>so",
      "<cmd>Symbols<CR>",
      mode = "n",
      desc = "Symbols open",
    },
    {
      "<leader>sc",
      "<cmd>SymbolsClose<CR>",
      mode = "n",
      desc = "Symbols close",
    },
  },
  config = function()
    local r = require "symbols.recipes"
    require("symbols").setup(r.DefaultFilters, r.AsciiSymbols, {
      -- custom settings here
      providers = {
        lsp = {
          timeout_ms = 5000,
        },
      },
    })
  end,
}
