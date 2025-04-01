return {
  "aravind2612krishna/aravk_nvim_utils",
  -- dir = "/home/aravk/sources/aravk_nvim_utils",
  keys = {
    {
      "<leader>td",
      function()
        local termdebug = require "aravk_nvim_utils.termdebug"
        if termdebug then termdebug.setupdbg() end
      end,
      mode = "n",
      desc = "Setup termdebug and start it",
    },
  },
  cmd = { "CopyContext" },
  config = function(_, opts)
      require("aravk_nvim_utils.smartcodecopy").setup(opts)
  end
}
