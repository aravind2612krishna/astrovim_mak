MEnabled = {
  { "hrsh7th/nvim-cmp", enabled = false },
  {
    "saghen/blink.cmp",
    event = "InsertEnter",
    lazy = false, -- lazy loading handled internally
    -- optional: provides snippets for the snippet source
    -- dependencies = "rafamadriz/friendly-snippets",

    -- use a release tag to download pre-built binaries
    version = "v1.*",
    -- OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    build = "cargo build --release",
    -- On musl libc based systems you need to add this flag
    -- build = 'RUSTFLAGS="-C target-feature=-crt-static" cargo build --release',

    opts = {
      -- use an empty table to disable a keymap
      -- keymap = "default",
      keymap = {
        preset = "default",
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-e>"] = { "hide", "fallback" },
        ["<CR>"] = {
          function(cmp)
            if cmp.get_selected_item_idx then return cmp.accept() end
          end,
          "fallback",
        },

        ["<Tab>"] = {
          function(cmp)
            if (not cmp.is_visible()) and cmp.snippet_active() then
              return cmp.snippet_forward()
            else
              if cmp.is_visible() then return cmp.select_next() end
            end
          end,
          "fallback",
        },
        ["<S-Tab>"] = {
          function(cmp)
            if (not cmp.is_visible()) and cmp.snippet_active() then
              return cmp.snippet_backward()
            else
              if cmp.is_visible() then return cmp.select_prev() end
            end
          end,
          "fallback",
        },
      },
      fuzzy = {
        -- When enabled, allows for a number of typos relative to the length of the query
        -- Disabling this matches the behavior of fzf
        -- use_typo_resistance = true,
        -- Frecency tracks the most recently/frequently used items and boosts the score of the item
        use_frecency = true,
        -- Proximity bonus boosts the score of items matching nearby words
        use_proximity = true,
        -- UNSAFE!! When enabled, disables the lock and fsync when writing to the frecency database. This should only be used on unsupported platforms (i.e. alpine termux)
        use_unsafe_no_lock = false,
        -- Controls which sorts to use and in which order, falling back to the next sort if the first one returns nil
        -- You may pass a function instead of a string to customize the sorting
        sorts = { "score", "sort_text" },

        prebuilt_binaries = {
          -- Whether or not to automatically download a prebuilt binary from github. If this is set to `false`
          -- you will need to manually build the fuzzy binary dependencies by running `cargo build --release`
          download = true,
          -- Ignores mismatched version between the built binary and the current git sha, when building locally
          ignore_version_mismatch = false,
          -- When downloading a prebuilt binary, force the downloader to resolve this version. If this is unset
          -- then the downloader will attempt to infer the version from the checked out git tag (if any).
          --
          -- Beware that if the fuzzy matcher changes while tracking main then this may result in blink breaking.
          force_version = nil,
          -- When downloading a prebuilt binary, force the downloader to use this system triple. If this is unset
          -- then the downloader will attempt to infer the system triple from `jit.os` and `jit.arch`.
          -- Check the latest release for all available system triples
          --
          -- Beware that if the fuzzy matcher changes while tracking main then this may result in blink breaking.
          force_system_triple = nil,
          -- Extra arguments that will be passed to curl like { 'curl', ..extra_curl_args, ..built_in_args }
          extra_curl_args = {},
        },
      },
      completion = {
        list = {
          selection = {
            preselect = true,
            -- preselect = function(ctx)
            --   return ctx.mode ~= "cmdline" and not require("blink.cmp").snippet_active { direction = 1 }
            -- end,
          },
        },
        ghost_text = {
          enabled = true,
          -- Show the ghost text when an item has been selected
          show_with_selection = true,
          -- Show the ghost text when no item has been selected, defaulting to the first item
          show_without_selection = false,
          -- Show the ghost text when the menu is open
          show_with_menu = true,
          -- Show the ghost text when the menu is closed
          show_without_menu = true,
        },
      },
      sources = {
        default = { "lsp", "path", "buffer", "snippets" },
      },
      -- signature = {
      --   enabled = true,
      -- },

      -- experimental auto-brackets support
      -- accept = { auto_brackets = { enabled = true } }

      -- experimental signature help support
      -- trigger = { signature_help = { enabled = true } }
    },
  },
  -- {
  --   "AstroNvim/astrolsp",
  --   dependencies = { "saghen/blink.cmp" },
  --   config = {
  --     clangd = {
  --       capabilities = require('blink.cmp').get_lsp_capabilities(require"astrolsp".config.clangd.capabilities)
  --     },
  --   },
  -- },
}

MDisabled = {
  {
    "saghen/blink.cmp",
    lazy = false, -- lazy loading handled internally
    enabled = false,
  },
}
return MEnabled
