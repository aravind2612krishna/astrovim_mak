---@type LazySpec
return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      -- Configure core features of AstroNvim
      features = {
        large_buf = { size = 1024 * 256 * 1024, lines = 10000000 }, -- set global limits for large files for disabling features like treesitter
        autopairs = true, -- enable autopairs at start
        cmp = true, -- enable completion at start
        highlighturl = true, -- highlight URLs at start
        notifications = true, -- enable notifications at start
      },
      -- passed to `vim.filetype.add`
      -- vim options can be configured here
      options = {
        opt = { -- vim.opt.<key>
          relativenumber = false, -- sets vim.opt.relativenumber
          number = true, -- sets vim.opt.number
          spell = false, -- sets vim.opt.spell
          signcolumn = "yes", -- sets vim.opt.signcolumn to yes
          wrap = false, -- sets vim.opt.wrap
          expandtab = true, -- expand tabs to spaces
          shiftwidth = 4,
          tabstop = 4,
          cindent = true,
          completeopt = { "menu", "menuone", "noinsert", "popup" },
          -- completeopt = "menu,menuone,noinsert,select,popup",
          clipboard = "unnamedplus",
          diffopt = "context:99999",
        },
        g = { -- vim.g.<key>
          -- configure global vim variables (vim.g)
          -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
          -- This can be found in the `lua/lazy_setup.lua` file
          autoformat = false,
          termdebug_wide = 1,
        },
      },
      -- Mappings can be configured through AstroCore as well.
      -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map

          -- navigate buffer tabs
          ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
          ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

          -- mappings seen under group name "Buffer"
          ["<Leader>bd"] = {
            function()
              require("astroui.status.heirline").buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Close buffer from tabline",
          },

          -- tables with just a `desc` key will be registered with which-key if it's installed
          -- [aravk] mappings relative to buffer dir
          ["<Leader>e"] = { ':e <C-R>=expand("%:p:h") . "/" <CR>', desc = "Open :edit in dir of current file" },
          ["<Leader>t"] = { ':tabe <C-R>=expand("%:p:h") . "/" <CR>', desc = "Open :tabnew in dir of current file" },
          ["<Leader>c"] = false,

          -- ["<C-q>"] = false,
          ["<C-q>"] = { ":cclose<CR>", desc = "Close quickfix" },
          ["<C-Q>"] = { ":cclose<CR>", desc = "Close quickfix" },
          ["<C-e>"] = {
            function()
              local currwinid = vim.fn.win_getid()
              vim.cmd [[ topleft copen ]] -- open quickfix top left
              vim.fn.win_gotoid(currwinid) -- go back to previous window
            end,
            desc = "Open quickfix and jump to it",
          },

          -- this is useful for naming menus
          -- ["<Leader>b"] = { desc = "Buffers" },

          -- setting a mapping to false will disable it
        },
      },
      autocmds = {
        -- autocmds can be configured here
        autoosc = {
          {
            event = "TextYankPost",
            desc = "copy to OSC keyboard",
            callback = function()
              vim.highlight.on_yank()
              if os.getenv "SSH_CONNECTION" then
                local copy_to_unnamedplus = require("vim.ui.clipboard.osc52").copy "+"
                copy_to_unnamedplus(vim.v.event.regcontents)
                local copy_to_unnamed = require("vim.ui.clipboard.osc52").copy "*"
                copy_to_unnamed(vim.v.event.regcontents)
              end
            end,
          },
        },
        aravkvim = {
          {
            event = "VimEnter",
            pattern = "*",
            callback = function()
              vim.opt.diffopt:append "context:99999"
              vim.opt.diffopt:append "filler"
              vim.opt.diffopt:append "algorithm:patience"
              vim.opt.diffopt:append "linematch:4"
              vim.opt.guicursor:append "a:blinkon50-blinkoff50-blinkwait0"
            end,
          },
        },
      },
      diagnostics = {
        virtual_text = { severity = 1 },
        virtual_lines = false, -- { current_line = true },
        jump = { float = true },
        update_in_insert = false,
      }, -- diagnostic settings on startup
    },
  },
  {
    "akinsho/toggleterm.nvim",
    opts = {
      direction = "float",
    },
  },
}
