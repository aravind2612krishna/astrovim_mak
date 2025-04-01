-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  -- { import = "astrocommunity.editing-support.conform-nvim" },
  -- { import = "astrocommunity.completion.copilot-cmp" },
  -- { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  -- { import = "astrocommunity.keybinding.mini-clue" },
  -- { import = "astrocommunity.split-and-window.colorful-winsep-nvim"},
  -- { import = "astrocommunity.bars-and-lines.feline-nvim" },
  -- { import = "astrocommunity.completion.coq_nvim" },
}
