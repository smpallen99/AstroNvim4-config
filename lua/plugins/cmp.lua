return {
  {
    "zbirenbaum/copilot-cmp",
    config = function ()
      require("copilot_cmp").setup(
        {
          event = { "InsertEnter", "LspAttach" },
          fix_pairs = true,
        }
      )
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
        local cmp = require("cmp")
        local lsp_kind = require('lspkind')
        lsp_kind.symbol_map.Copilot = ""
        --
        -- I could not get the group_index to work correctly, 
        -- So I'm removing it here. 
        --
        opts.sources = {
          { name = "nvim_lsp", priority = 1000 },
          { name = "buffer", priority = 500 },
          { name = "path", priority = 250 },
          { name = "luasnip", priority = 750 },
          { name = "copilot", priority = 300  },
        }

        -- swaping the kind and abbr 
        opts.formatting.fields = { "abbr", "kind",  "menu" }
        opts.formatting.format = lsp_kind.cmp_format({
           mode = "symbol_text",
           menu = ({
             buffer = "[Buffer]",
             nvim_lsp = "[LSP]",
             luasnip = "[luasnip]",
             nvim_lua = "[Lua]",
             copilot = "[Copilot]",
           })
        })

        opts.sorting = {
          priority_weight = 2,
          comparators = {
            require("copilot_cmp.comparators").prioritize,

            -- Below is the default comparitor list and order for nvim-cmp
            cmp.config.compare.offset,
            -- cmp.compare.scopes, --this is commented in nvim-cmp too
            cmp.config.compare.exact,
            cmp.config.compare.score,
            cmp.config.compare.recently_used,
            cmp.config.compare.locality,
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
          },
        }
    end,
  },
}
