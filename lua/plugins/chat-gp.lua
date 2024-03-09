
if require("configuration").enable_gp then
  return {
    {
      "robitx/gp.nvim",
      enable = true,
      lazy = false,
      config = function() require "plugins.configs.gp" end,
    },
  }
else
  return {}
end
