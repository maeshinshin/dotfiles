package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua"
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua"

return {
  -- jupytext change(ipynb -> py)
  {
    "GCBallesteros/jupytext.nvim",
    config = true,
    -- ft = "ipynb",
    lazy = false,
  },
  --  cell run
  {
    "GCBallesteros/NotebookNavigator.nvim",
    keys = {
      {
        "]h",
        function()
          require("notebook-navigator").move_cell("d")
        end,
      },
      {
        "[h",
        function()
          require("notebook-navigator").move_cell("u")
        end,
      },
      { "<leader>rc", "<cmd>lua require('notebook-navigator').run_cell()<cr>" },
      { "<leader>rm", "<cmd>lua require('notebook-navigator').run_and_move()<cr>" },
    },
    dependencies = {
      "echasnovski/mini.comment",
      "anuvyklack/hydra.nvim",
      {
        "benlubas/molten-nvim",
        version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
        dependencies = {
          {
            "benlubas/molten-nvim",
            build = ":UpdateRemotePlugins",
            dependencies = "willothy/wezterm.nvim",
          },
        },
        build = ":UpdateRemotePlugins",
        -- cmd = "MoltenInit",
        init = function()
          vim.g.molten_auto_open_output = false
          vim.g.molten_output_show_more = true
          vim.g.molten_image_provider = "wezterm"
          vim.g.molten_wrap_output = true
          vim.g.molten_output_virt_lines = true
          vim.g.molten_split_direction = "left" --direction of the output window, options are "right", "left", "top", "bottom"
          vim.g.molten_split_size = 30 --(0-100) % size of the screen dedicated to the output window
          vim.g.molten_virt_text_output = true
          vim.g.molten_use_border_highlights = true
          vim.g.molten_virt_lines_off_by_1 = true
          vim.g.molten_auto_image_popup = true
        end,
        keys = {
          { "<leader>j", ":MoltenImagePopup<cr>" },
        }
      },
    },
    event = "VeryLazy",
    config = function()
      local nn = require("notebook-navigator")
      nn.setup({ activate_hydra_keys = "<leader>h", repl_provider = "molten" })
    end,
  },
}
