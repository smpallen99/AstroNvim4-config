-- initialize internally use mapping section titles
--

return {
  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
       local mappings =  {
          n = {
            -- Steve's mappings
            ["<Leader>r"] = { "<cmd>b#<cr>", desc = "Previous buffer" },
            ["<TAB>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
            ["<S-TAB>"] = { "<cmd>bprevious<cr>", desc = "Prev buffer" },
            ["<Leader>a"] = { "<cmd>A<cr>", desc = "Alternate File" },

            ["<Leader>uZ"] = { "<cmd>ZenMode<cr>", desc = "Zen Mode" },

            --"CodeAssistant"
            -- Obsidian
            ["<Leader>N"] = { desc = "󰺿 Notes" },
            ["<Leader>Nl"] = { "<cmd>ls<cr>", desc = "ls" },
            ["<Leader>Nw"] = { "<cmd>ObsidianWorkstace<cr>", desc = "Pick Obsidian Workspace" },

            -- Markdown Preview
            ["<Leader>m"] = { desc = "Markdown" },
            ["<Leader>mp"] = { "<cmd>MarkdownPreview<cr>", desc = "Preview" },
            ["<Leader>ms"] = { "<cmd>MarkdownPreviewStop<cr>", desc = "stop" },
            ["<Leader>mt"] = { "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle" },

            -- second key is the lefthand side of the map
            -- mappings seen under group name "Buffer"
            ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
            ["<Leader>bD"] = {
              function()
                require("astroui.status").heirline.buffer_picker(
                  function(bufnr)
                    require("astrocore.buffer").close(bufnr)
                  end
                )
              end,
              desc = "Pick to close",
            },
            -- -- tables with the `name` key will be registered with which-key if it's installed
            -- -- this is useful for naming menus
            ["<Leader>b"] = { name = "Buffers" },
            -- quick save
            ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

          },
          t = {
            -- setting a mapping to false will disable it
            -- ["<esc>"] = false,
          },
          i = {
            ["<C-Enter>"] = { "<cmd>:Copilot suggestion accept<cr>", desc = "Accept Suggestion" },
            ["<C-Down>"] = { "<cmd>:Copilot suggestion next<cr>", desc = "Next Suggestion" },
            ["<C-Up>"] = { "<cmd>:Copilot suggestion prev<cr>", desc = "Next Suggestion" },

            ["<C-g>"] = { function() end, desc = "GpChat" },
          },
      }

      return vim.tbl_deep_extend("force", opts, {
        mappings = vim.tbl_deep_extend("force", require("plugins.configs.gp_mappings"), mappings),
      })
    end
  }
}

