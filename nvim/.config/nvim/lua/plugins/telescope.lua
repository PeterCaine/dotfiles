return {
  {
    "nvim-telescope/telescope.nvim",
    version = false,  -- or pin a tag if you prefer
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
    },
    lazy = false,
    keys = {
      { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Find files" },
      { "<leader>fb", function() require("telescope.builtin").buffers() end,    desc = "Buffers" },
      { "<leader>fw", function() require("telescope.builtin").live_grep() end,  desc = "Live grep" },
    },

    -- Build opts at load time (safe to require telescope modules here)
    opts = function()
      local ok, themes = pcall(require, "telescope.themes")
      local dropdown = ok and themes.get_dropdown({}) or {}
      return {
        extensions = {
          ["ui-select"] = dropdown,
        },
      }
    end,

    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      pcall(telescope.load_extension, "ui-select")
    end,
  },
}

