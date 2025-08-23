return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config=true,
    lazy=false,
    keys = {
      vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>'),
      vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>'),
      vim.keymap.set('n', '<leader>fw', ':Telescope live_grep<CR>'),
    }
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      -- This is your opts table
      require("telescope").setup {
	extensions = {
	  ["ui-select"] = {
	    require("telescope.themes").get_dropdown {
	    }
	  }
	}
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
