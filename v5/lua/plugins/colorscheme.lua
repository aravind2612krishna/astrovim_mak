return {
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    -- opts = {
    --   scheme = "astrolight",
    -- },
  },
  -- {
  --   "alexxGmZ/e-ink.nvim",
  --   priority = 1000,
  --   config = function()
  --     require("e-ink").setup()
  --     vim.cmd.colorscheme "e-ink"
  --   end,
  -- },
  -- {
  --   "rebelot/kanagawa.nvim",
  --   config = function(_, _)
  --     require("kanagawa").setup()
  --     require("kanagawa").load "wave"
  --     vim.o.background = "light"
  --   end,
  -- },
  {
    "wuelnerdotexe/vim-enfocado",
    config = function(_, _)
      vim.o.termguicolors = true
      vim.o.background = "dark"
      -- vim.cmd.colorscheme "enfocado"
      -- vim.cmd [[hi! link MiniStatuslineFilename MoreMsg]]
      -- vim.cmd [[hi! link TabLineSel MoreMsg]]
      -- vim.cmd [[hi! link TabLine LspInlayHint]]
      -- vim.cmd [[hi! link TreesitterContextBottom Underlined]]
      -- vim.cmd [[hi! link VertSplit AccentSecond]]

      vim.api.nvim_create_user_command("DefaultDark", function()
        vim.o.background = "dark"
        vim.cmd.colorscheme "default"
        local normal_bg = "NvimDarkGray3"
        -- local normal_bg = 'NvimDarkGray1'
        vim.api.nvim_set_hl(0, "Directory", { bg = "none", fg = "LightGreen" })
        vim.api.nvim_set_hl(0, "String", { fg = "LightGreen" })
        vim.api.nvim_set_hl(0, "StatusLine", { bg = "NvimDarkGray2", fg = "NvimLightBlue" })
        vim.api.nvim_set_hl(0, "ModeMsg", { bg = "none", fg = "NvimLightYellow" })
        vim.api.nvim_set_hl(0, "Comment", { fg = "gray", bold = false })
        vim.api.nvim_set_hl(0, "Normal", { bg = normal_bg })
        vim.api.nvim_set_hl(0, "ZenBg", { bg = normal_bg })
        vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none", fg = "NvimDarkGray1" })
        vim.api.nvim_set_hl(0, "CursorLine", { bg = "NvimDarkGray2" })
        vim.api.nvim_set_hl(0, "Special", { fg = "NvimLightGray2" })
        vim.api.nvim_set_hl(0, "Identifier", { fg = "LightBlue" })
        vim.api.nvim_set_hl(0, "Function", { fg = "NvimLightBlue" })
        vim.api.nvim_set_hl(0, "Statement", { fg = "NvimLightGray2", bold = false })
      end, {})

      vim.api.nvim_create_user_command("DefaultLight", function()
        vim.o.background = "light"
        vim.cmd.colorscheme "default"
        vim.api.nvim_set_hl(0, "StatusLine", { fg = "black", bg = "NvimLightGray1" })
        vim.api.nvim_set_hl(0, "ModeMsg", { bg = "none", fg = "NvimLightYellow" })
        vim.api.nvim_set_hl(0, "Comment", { fg = "gray", bold = false })
        vim.api.nvim_set_hl(0, "Normal", { bg = "white" })
        vim.api.nvim_set_hl(0, "ZenBg", { bg = "white" })
        vim.api.nvim_set_hl(0, "CursorLine", { bg = "NvimLightGray1" })
        vim.api.nvim_set_hl(0, "Pmenu", { fg = "NvimDarkGray1", bg = "NvimLightGray1" })
        vim.api.nvim_set_hl(0, "PmenuSel", { fg = "NvimDarkGreen", bg = "NvimLightGray2" })
        vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "NvimDarkCyan" })
        vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "DarkCyan" })
      end, {})

      vim.api.nvim_create_user_command("QuietDark", function()
        vim.o.background = "dark"
        vim.cmd.colorscheme "quiet"

        vim.api.nvim_set_hl(0, "Normal", { bg = "#000704" })
        vim.api.nvim_set_hl(0, "ZenBg", { link = "Normal" })
        vim.api.nvim_set_hl(0, "CursorLine", { bg = "black" })
        vim.api.nvim_set_hl(0, "StatusLine", { bg = "NvimDarkGray2", fg = "white" })
        vim.api.nvim_set_hl(0, "TabLineFill", { bg = "black", fg = "white" })
        vim.api.nvim_set_hl(0, "TabLineSel", { bg = "NvimDarkGray2", fg = "NvimLightGray1" })
        vim.api.nvim_set_hl(0, "LineNr", { bg = "black" })
        vim.api.nvim_set_hl(0, "Comment", { fg = "gray", bold = false })
        vim.api.nvim_set_hl(0, "Visual", { bg = "#002504" })
        vim.api.nvim_set_hl(0, "Function", { fg = "NvimLightGray2" })
        vim.api.nvim_set_hl(0, "Identifier", { fg = "NvimLightGray3" })
        vim.api.nvim_set_hl(0, "Special", { fg = "NvimLightGray1" })
        vim.api.nvim_set_hl(0, "Pmenu", { bg = "gray", fg = "NvimDarkGray1" })
        vim.api.nvim_set_hl(0, "PmenuSel", { fg = "white", bg = "NvimDarkGray4" })
        vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "NvimDarkGray1" })
        vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "NvimDarkGray3" })
      end, {})

      vim.api.nvim_create_user_command("QuietLight", function()
        vim.o.background = "light"
        vim.cmd.colorscheme "quiet"
        vim.api.nvim_set_hl(0, "Normal", { fg = "black", bg = "white" })
        vim.api.nvim_set_hl(0, "CursorLine", { bg = "NvimLightGray1" })
        vim.api.nvim_set_hl(0, "TabLineFill", { bg = "NvimLightGray2" })
        vim.api.nvim_set_hl(0, "TabLineSel", { bg = "NvimLightGray3", fg = "black" })
        vim.api.nvim_set_hl(0, "StatusLine", { bg = "NvimLightGray2", fg = "black" })
        vim.api.nvim_set_hl(0, "Comment", { fg = "gray", bold = false })
        vim.api.nvim_set_hl(0, "Visual", { bg = "NvimLightYellow" })
        vim.api.nvim_set_hl(0, "WinSeparator", { bg = "NvimLightGray2", fg = "NvimLightGray2" })
        vim.api.nvim_set_hl(0, "Pmenu", { bg = "NvimLightGray3" })
        vim.api.nvim_set_hl(0, "PmenuSel", { fg = "SeaGreen", bg = "NvimLightGray2" })
        vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "NvimDarkGreen" })
        vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "green" })
        vim.api.nvim_set_hl(0, "ZenBg", { bg = "white" })
      end, {})

      vim.api.nvim_create_user_command("ForestDweller", function()
        vim.cmd.colorscheme "retrobox"
        vim.opt.background = "dark"
        vim.api.nvim_set_hl(0, "Comment", { fg = "NvimDarkGray4" })
        vim.api.nvim_set_hl(0, "StatusLine", { bg = "#242424" })
        vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#242424" })
        vim.api.nvim_set_hl(0, "CursorLine", { bg = "#242424" })
        vim.api.nvim_set_hl(0, "Function", { fg = "#85bb46", bold = false })
        vim.api.nvim_set_hl(0, "String", { fg = "#aabf66", bold = false })
        vim.api.nvim_set_hl(0, "VertSplit", { bg = "none", fg = "NvimDarkGray2" })
        vim.api.nvim_set_hl(0, "IndentLine", { fg = "NvimDarkGray3" })
        vim.api.nvim_set_hl(0, "Directory", { bg = "none", fg = "#85bb46" })
        -- vim.api.nvim_set_hl(0, 'IndentLineCurrent', { fg = 'NvimDarkGray4' })
      end, {})

      vim.api.nvim_create_user_command("SunDweller", function()
        vim.cmd.colorscheme "retrobox"
        vim.opt.background = "light"
        vim.api.nvim_set_hl(0, "StatusLine", { bg = "#e5d4b1" })
        vim.api.nvim_set_hl(0, "Function", { fg = "#8aab26", bold = false })
      end, {})

      vim.api.nvim_create_user_command("StarMud", function()
        vim.cmd.colorscheme "lunaperche"
        vim.opt.background = "light"
        vim.api.nvim_set_hl(0, "StatusLine", { bg = "NvimLightGray2" })
        vim.api.nvim_set_hl(0, "VertSplit", { bg = "none", fg = "NvimDarkGray2" })
      end, {})

      vim.api.nvim_create_user_command("LunarMud", function()
        vim.cmd.colorscheme "lunaperche"
        vim.opt.background = "dark"
        vim.api.nvim_set_hl(0, "Normal", { bg = "NvimDarkGray1" })
        vim.api.nvim_set_hl(0, "Comment", { fg = "#404341" })
        vim.api.nvim_set_hl(0, "StatusLine", { bg = "#262628" })
        vim.api.nvim_set_hl(0, "VertSplit", { bg = "none", fg = "NvimDarkGray2" })
        vim.api.nvim_set_hl(0, "Function", { fg = "#a8ceb5" })
        vim.api.nvim_set_hl(0, "LineNr", { bg = "NvimDarkGray1", fg = "NvimDarkCyan" })
        vim.api.nvim_set_hl(0, "String", { fg = "#bd659d" })
      end, {})

      vim.api.nvim_create_user_command("Habafax", function()
        vim.cmd.colorscheme "habamax"
        vim.opt.background = "dark"
        vim.api.nvim_set_hl(0, "StatusLine", { bg = "NvimDarkGray3" })
        vim.api.nvim_set_hl(0, "VertSplit", { bg = "none", fg = "NvimDarkGray2" })
      end, {})

      vim.api.nvim_create_user_command("KoiKai", function()
        vim.cmd.colorscheme "unokai"
        vim.opt.background = "dark"
        vim.api.nvim_set_hl(0, "StatusLine", { bg = "#383933" })
        vim.api.nvim_set_hl(0, "VertSplit", { bg = "none", fg = "NvimDarkGray2" })
        vim.api.nvim_set_hl(0, "IndentLine", { fg = "NvimDarkGray4" })
        vim.api.nvim_set_hl(0, "IndentLineCurrent", { fg = "#f92672" })
      end, {})

      vim.api.nvim_create_user_command("BreakCore", function()
        vim.cmd.colorscheme "elflord"
        vim.api.nvim_set_hl(0, "Normal", { bg = "#030003" })
        vim.api.nvim_set_hl(0, "StatusLine", { bg = "NvimDarkMagenta" })
        vim.api.nvim_set_hl(0, "CursorLine", { bg = "NvimDarkGray1" })
        vim.api.nvim_set_hl(0, "TabLineSel", { bg = "NvimDarkMagenta" })
        vim.api.nvim_set_hl(0, "TabLineFill", { bg = "NvimDarkGray1" })
        vim.api.nvim_set_hl(0, "Comment", { fg = "#53669e" })
        vim.api.nvim_set_hl(0, "WinSeparator", { fg = "NvimDarkCyan" })
        vim.api.nvim_set_hl(0, "LineNr", { bg = "NvimDarkGray1", fg = "NvimDarkCyan" })
        vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "NvimDarkGray1" })
        vim.api.nvim_set_hl(0, "IndentLine", { fg = "#400000" })
        vim.api.nvim_set_hl(0, "IndentLineCurrent", { fg = "#800000" })
      end, {})

      vim.api.nvim_create_user_command("PrincessPeach", function()
        vim.cmd.colorscheme "peachpuff"
        vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ffdab9", bg = "none" })
      end, {})

      vim.api.nvim_create_user_command("Invis", function()
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "Float", { bg = "none" })
        vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
        vim.api.nvim_set_hl(0, "ZenBg", { bg = "none" })
      end, {})
    end,
  },
  -- {
  --   "bluz71/vim-moonfly-colors",
  --   name = "moonfly",
  --   lazy = false,
  --   priority = 1000,
  -- },
  {
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    config = function()
      -- vim.g.zenbones_darken_comments = 45
      -- vim.cmd.colorscheme('zenbones')
      -- vim.cmd.colorscheme "kanagawabones"
    end,
  },
  {
    "kuznetsss/meadow.nvim",
    priority = 1000,
    config = function()
      require("meadow").setup {
        color_saturation = 80, -- contrast (0-100)
        color_value = 80, -- brightness (0-100)
      }
      vim.cmd.colorscheme 'meadow'
    end,
  },
  -- {
  --   "maxmx03/solarized.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     transparent = {
  --       enabled = true,
  --       pmenu = true,
  --       normal = false,
  --       normalfloat = true,
  --       neotree = false,
  --       nvimtree = false,
  --       whichkey = false,
  --       telescope = false,
  --       lazy = false,
  --     },
  --     on_highlights = nil,
  --     on_colors = nil,
  --     palette = "solarized", -- solarized (default) | selenized
  --     variant = "autumn", -- "spring" | "summer" | "autumn" | "winter" (default)
  --     error_lens = {
  --       text = false,
  --       symbol = false,
  --     },
  --     styles = {
  --       enabled = true,
  --       types = {},
  --       functions = {bold = true},
  --       parameters = {},
  --       comments = {italic = true},
  --       strings = {},
  --       keywords = {},
  --       variables = {},
  --       constants = {},
  --     },
  --     plugins = {
  --       treesitter = true,
  --       lspconfig = true,
  --       navic = true,
  --       cmp = true,
  --       indentblankline = true,
  --       neotree = true,
  --       nvimtree = true,
  --       whichkey = true,
  --       dashboard = true,
  --       gitsigns = true,
  --       telescope = true,
  --       noice = true,
  --       hop = true,
  --       ministatusline = true,
  --       minitabline = true,
  --       ministarter = true,
  --       minicursorword = true,
  --       notify = true,
  --       rainbowdelimiters = true,
  --       bufferline = true,
  --       lazy = true,
  --       rendermarkdown = true,
  --       ale = true,
  --       coc = true,
  --       leap = true,
  --       alpha = true,
  --       yanky = true,
  --       gitgutter = true,
  --       mason = true,
  --       flash = true,
  --     },
  --   },
  --   config = function(_, opts)
  --     vim.o.termguicolors = true
  --     vim.o.background = "light"
  --     require("solarized").setup(opts)
  --     vim.cmd.colorscheme "solarized"
  --   end,
  -- },
  -- {
  --   "sainnhe/everforest",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- Optionally configure and load the colorscheme
  --     -- directly inside the plugin declaration.
  --     vim.g.everforest_enable_italic = true
  --     vim.o.background = "light"
  --     vim.cmd.colorscheme "everforest"
  --   end,
  -- },
}
