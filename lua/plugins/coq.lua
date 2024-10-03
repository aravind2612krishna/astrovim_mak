return {
  "ms-jpq/coq.thirdparty",
  enabled = false,
  lazy = false,
  dependencies = {
      "github/copilot.vim"
  },
  setup = function()
    require "coq_ep" {
      { src = "nvimlua", short_name = "nLUA" },
      { src = "copilot", short_name = "COP", tmp_accept_key = "<c-f>" },
      { src = "figlet", short_name = "BIG", trigger="!big" },
    }
  end,
}
