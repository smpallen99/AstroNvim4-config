-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  -- TODO: Remove branch v4 on release
  { "AstroNvim/astrocommunity", branch = "v4" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.recipes.telescope-nvchad-theme" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.completion.copilot-lua" },
  { import = "astrocommunity.editing-support/rainbow-delimiters-nvim" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { -- further customize the options set by the community
    "zbirenbaum/copilot.lua",
    opts = {
        panel = { enabled = false },
        suggestion = { enabled = false, auto_trigger = true },
      -- suggestion = {
      --   keymap = {
      --     accept = "<C-l>",
      --     accept_word = false,
      --     accept_line = false,
      --     next = "<C-.>",
      --     prev = "<C-,>",
      --     dismiss = "<C/>",
      --   },
      -- },
    },
  },
  -- import/override with your plugins folder
}
