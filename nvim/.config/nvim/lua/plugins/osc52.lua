return {
  "ojroques/nvim-osc52",
  event = "VeryLazy",     -- load after startup (or use 'InsertEnter' / 'BufReadPre' / 'UIEnter')
  opts = {
    max_length = 0,       -- no limit
    silent = true,
    trim = true,
  },
  config = function(_, opts)
    local osc52 = require("osc52")
    osc52.setup(opts)

    -- optional, handy keymaps
    vim.keymap.set("n", "<leader>y", osc52.copy_operator, { expr = true, desc = "OSC52 yank operator" })
    vim.keymap.set("n", "<leader>yy", function() osc52.copy_register('"') end, { desc = "OSC52 yank line" })
    vim.keymap.set("v", "<leader>y", osc52.copy_visual, { desc = "OSC52 yank selection" })

    -- if you want all yanks (to + register) to also go via OSC52:
    -- vim.api.nvim_create_autocmd("TextYankPost", {
    --   callback = function() if vim.v.event.operator == "y" then osc52.copy_register("+") end end,
    -- })
  end,
}

