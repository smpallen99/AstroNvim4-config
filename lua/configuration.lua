local conf = {}

-- change the followiing to enable/disable transparency
-- options true, false, "same"
local neovide_transparent = false
local transparent = true

conf.theme = "tokyonight"
conf.theme_style = "night"

-- enable transparency if the theme supports it
if vim.g.neovide and not (neovide_transparent == "same") then
  conf.enable_transparent = neovide_transparent
else
  conf.enable_transparent = transparent
end

conf.neovide_transparency = ((conf.enable_transparent and 0.95) or 1.0)

-- GLOBAL OPTIONS CONFIGURATION
-- Some prefer space as the map leader, but why
conf.mapleader = " "
conf.maplocalleader = " "
-- Toggle global status line
conf.global_statusline = true
-- set numbered lines
conf.number = true
-- enable mouse see :h mouse
conf.mouse = "nv"
-- set relative numbered lines
conf.relative_number = true
-- always show tabs; 0 never, 1 only if at least two tab pages, 2 always
-- see enable_tabline below to disable or enable the tabline plugin
conf.showtabline = 2
-- enable or disable listchars
conf.list = true
-- which list chars to show
conf.listchars = {
  eol = "⤶",
  tab = ">.",
  trail = "~",
  extends = "◀",
  precedes = "▶",
}
-- use rg instead of grep
conf.grepprg = "rg --hidden --vimgrep --smart-case --"

-- ENABLE/DISABLE/SELECT PLUGINS
--
-- AI coding assistants - ChatGPT, Code Explain, Copilot, NeoAI, Codeium
-- Enable Github Copilot if you have an account, it is superior
-- Codeium is free and enabled by default, run ':Codeium Auth' to enable
--
-- Enable ChatGPT (set OPENAI_API_KEY environment variable)
conf.enable_chatgpt = false
-- "robitx/gp.nvim",
conf.enable_gp = true
-- Enable Code Explain (requires 3.5GB model, uses GPT4ALL)
conf.enable_codeexplain = false
-- Enable Github Copilot
conf.enable_copilot = true
-- Enable Neoai, https://github.com/Bryley/neoai.nvim
conf.enable_neoai = false
-- Enable Codeium, https://codeium.com
conf.enable_codeium = false
--
-- Enable the header of the dashboard
conf.enable_dashboard_header = true
-- File explorer tree plugin: neo-tree, nvim-tree, or none
-- [Note:] Here only for theme configs, Neotree is the default in LazyVim
conf.file_tree = "neo-tree"
-- Enable statusline (lualine)
conf.enable_statusline = true
-- Enable tabline
conf.enable_tabline = true
-- Enable rebelot/terminal.nvim
conf.enable_terminal = true
-- Enable the WakaTime metrics dashboard (requires API key)
conf.enable_wakatime = false
-- Enable zen mode distraction-free coding
conf.enable_zenmode = true
-- if zenmode enabled then enable terminal support as well
conf.enable_kitty = false
conf.enable_alacritty = false
conf.enable_wezterm = true
-- Enable smooth scrolling with neoscroll plugin
conf.enable_smooth_scrolling = true
-- treesitter parsers to be installed
conf.treesitter_ensure_installed = {
  "lua",
  "markdown",
  "markdown_inline",
  "query",
  "regex",
  "vim",
  "vimdoc",
  "elixir",
  "vue",
}
-- enable greping in hidden files
conf.telescope_grep_hidden = true
-- Show diagnostics, can be one of "none", "icons", "popup". Default is "popup"
--   "none":  diagnostics are disabled but still underlined
--   "icons": only an icon will show, use ',de' to see the diagnostic
--   "popup": an icon will show and a popup with the diagnostic will appear
conf.show_diagnostics = "icons"

return conf

